from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello World"

@app.route("/health")
def health():
    return "OK"

# Optional: only run server if executing directly if we are testing in 
# pytest or any we no need to pu ths
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)