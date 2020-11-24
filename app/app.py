from typing import List, Dict
import simplejson as json
from flask import Flask, request, Response, redirect
from flask import render_template
from flaskext.mysql import MySQL
from pymysql.cursors import DictCursor

app = Flask(__name__)
mysql = MySQL(cursorclass=DictCursor)

app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_DB'] = 'homesData'
mysql.init_app(app)


@app.route('/', methods=['GET'])
def index():
    user = {'username': 'Homes Project'}
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM homes')
    result = cursor.fetchall()
    return render_template('index.html', title='Home', user=user, homes=result)


@app.route('/view/<int:home_id>', methods=['GET'])
def record_view(home_id):
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM homes WHERE id=%s', home_id)
    result = cursor.fetchall()
    return render_template('view.html', title='View Form', home=result[0])

@app.route('/api/v1/homes', methods=['GET'])
def api_browse() -> str:
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM homes')
    result = cursor.fetchall()
    json_result = json.dumps(result)
    resp = Response(json_result, status=200, mimetype='application/json')
    return resp


@app.route('/api/v1/homes/<int:home_id>', methods=['GET'])
def api_retrieve(home_id) -> str:
    cursor = mysql.get_db().cursor()
    cursor.execute('SELECT * FROM homes WHERE id=%s', home_id)
    result = cursor.fetchall()
    json_result = json.dumps(result)
    resp = Response(json_result, status=200, mimetype='application/json')
    return resp


@app.route('/api/v1/homes/', methods=['POST'])
def api_add() -> str:
    resp = Response(status=201, mimetype='application/json')
    return resp


@app.route('/api/v1/homes/<int:home_id>', methods=['PUT'])
def api_edit(home_id) -> str:
    resp = Response(status=201, mimetype='application/json')
    return resp


@app.route('/api/homes/<int:city_id>', methods=['DELETE'])
def api_delete(home_id) -> str:
    resp = Response(status=210, mimetype='application/json')
    return resp

if __name__ == '__main__':
    app.run(host='0.0.0.0')