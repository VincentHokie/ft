from flask_mysqldb import MySQL
from app import app


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'fine_tune'

mysql = MySQL(app)
