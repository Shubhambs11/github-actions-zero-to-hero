from flask import Flask, render_template
app = Flask(__name__)


@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/health')
def health():
    return 'Server is up and running'


# Use Gunicorn as the production WSGI server, listening on port 80
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]
