from app import api
from app.controller.siswa import Siswa, UpdateSiswa, AddSiswa, DeleteSiswa

api.add_resource(Siswa, "/siswa")
api.add_resource(UpdateSiswa, "/siswa/<id>")
api.add_resource(AddSiswa, "/add-siswa")
api.add_resource(DeleteSiswa, "/delete-siswa/id")