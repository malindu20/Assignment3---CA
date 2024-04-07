from flask import Flask, request
 
app = Flask(__name__)
 
@app.route('/')
def main_route():
    return 'Main route data display'
 
@app.route('/host')
def host_route():
    return 'Host route data display'
 
@app.route('/ip')
def ip_route():
    # Get client's IP address from the request object
    client_ip = request.remote_addr
    return f'IP route data display. Client IP: {client_ip}'
 
if __name__ == '__main__':
    app.run(host='0.0.0.0')
