print('success')
print('success')
print('success')
print('success')


app = Flask(__name__)

@app.route("/test")
def test():
    return request.args.get("cmd")