from flask import request
from flask_restful import Resource
from flask_jwt_extended import jwt_required
from app import db

class Siswa(Resource):
    @jwt_required
    def get(self):
        sql = """select * from siswa"""
        return db.get_data(sql)
    
class UpdateSiswa(Resource):
    @jwt_required
    def get(self,id):
        sql = """select * from siswa where id = %s"""
        return db.get_one(sql,[id])

    @jwt_required
    def put(self,id):
        data = request.get_json()
        sql = """update siswa set nama = %s, alamat = %s, t_lahir = %s, jl = %s where id = %s"""
        return db.commit_data(sql,[data["nama"],data["alamat"],data["t_lahir"],data["jl"],id])

class AddSiswa(Resource):
    @jwt_required
    def post(self):
        data = request.get_json()
        sql = """insert into siswa values(0,%s,%s,%s,%s)"""
        return db.commit_data(sql, [data["nama"],data["alamat"],data["t_lahir"],data["jl"]])

class DeleteSiswa(Resource):
    @jwt_required
    def delete(self,id):
        sql = """delete from siswa where id = %s"""
        return db.commit_data(sql,[id])