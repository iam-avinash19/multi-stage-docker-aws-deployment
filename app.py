from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Level 3 🚀 Multi-Stage Docker + AWS Running"

app.run(host="0.0.0.0", port=5000)