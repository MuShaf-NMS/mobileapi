from flask import request
from flask_restful import Resource
from flask_jwt_extended import(create_access_token, get_jwt_identity, get_raw_jwt, jwt_required)
from passlib.hash import pbkdf2_sha256 as sha256
from app import db
from datetime import timedelta

def checkingUser(username):
    sql = """select * from user where username = %s"""
    return db.get_one(sql,[username])

def verifyPassword(password, hash):
    return sha256.verify(password, hash)

def saveBlacklistToken(jti):
    sql = """insert into blacklist_token values(0, %s)"""
    db.commit_data(sql, [jti])

class Register(Resource):
    def post(self):
        data = request.get_json()
        sql = """insert into user values(0,%s,%s,%s,%s,%s,%s)"""
        return db.commit_data(sql,[data['nama'],data['username'], sha256.hash(data['password']), data['alamat'], data['t_lahir'],data['jl']])

class Login(Resource):
    def post(self):
        data = request.get_json()
        user = checkingUser(data['username'])
        if user != None:
            if verifyPassword(data['password'], user['password']):
                accessToken = create_access_token(identity=user['id'], expires_delta=timedelta(hours=6))
                return {
                    'username': user['username'],
                    'nama': user['nama'],
                    'accessToken': accessToken,
                }
class Test(Resource):
    def get(self):
        return {"msg": "Welcome"}

class Logout(Resource):
    @jwt_required
    def get(self):
        jti = get_raw_jwt()['jti']
        saveBlacklistToken(jti)
        return {
            'msg': 'token has been revoked'
        }
        