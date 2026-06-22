print('success')
print('success')
print('success')
print('success')


from flask import Flask, request

app = Flask(__name__)

@app.route("/test")
def test():
    return request.args.get("cmd")
