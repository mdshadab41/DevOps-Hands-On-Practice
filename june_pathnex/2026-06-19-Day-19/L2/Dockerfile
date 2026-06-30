# Flask Application (Python)

from flask import Flask 
app = Flask(__name__)
@app.route('/')
def home():
      return "Hello Nephronix"
app.run(host='0.0.0.0', port=5000)


#Docker FIle
FROM python:3.11 
WORKDIR /opt/nephronix/flask-app 
COPY . /opt/nephronix/flask-app/
RUN pip install flask 
CMD ["python", "/opt/nephrnoix/flask-app/app.py"]