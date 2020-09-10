from app import api
from app.controller.siswa import Siswa, UpdateSiswa, AddSiswa, DeleteSiswa
from app.controller.user import Login, Logout, Register

api.add_resource(Siswa, "/siswa")
api.add_resource(UpdateSiswa, "/siswa/<id>")
api.add_resource(AddSiswa, "/add-siswa")
api.add_resource(DeleteSiswa, "/delete-siswa/<id>")
api.add_resource(Register, "/registrasi")
api.add_resource(Login, "/login")
api.add_resource(Logout, "/logout")