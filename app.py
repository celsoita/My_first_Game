from flask import Flask, send_from_directory, request, make_response
import os

app = Flask(__name__, static_folder='Game')

def add_headers(response):
    response.headers['Cross-Origin-Embedder-Policy'] = 'require-corp'
    response.headers['Cross-Origin-Opener-Policy'] = 'same-origin'
    return response

@app.route('/')
def serve_index():
    response = make_response(send_from_directory(app.static_folder, 'index.html'))
    return add_headers(response)

@app.route('/<path:path>')
def serve_file(path):
    response = make_response(send_from_directory(app.static_folder, path))
    return add_headers(response)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=443, ssl_context=('/etc/ssl/certs/cert.pem', '/etc/ssl/certs/key.pem'))
