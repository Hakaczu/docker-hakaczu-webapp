  
from flask import request, Flask
import jsonapp1 = Flask(__name__)
@app.route('/')
def home():
    return 'Hello World!'

if __name__ == '__main__':
    app.run(debug=True)