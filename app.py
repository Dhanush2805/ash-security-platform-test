print('success')
print('success')
print('success')
print('success')


import flask
from flask import request

app = flask.Flask(__name__)

@app.route("/user")
def user():
    return request.args["name"]