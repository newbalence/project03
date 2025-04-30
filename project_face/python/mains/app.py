from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("./project_face/src/main/webapp/login.jsp")

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, ssl_context=("./project_face/python/mains/cert.pem", "./project_face/python/mains/key.pem"))