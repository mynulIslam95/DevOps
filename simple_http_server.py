# Import the HTTP server and CGI modules
from http.server import HTTPServer, CGIHTTPRequestHandler

# Define the port number
port = 8000

# Create an HTTP server
httpd = HTTPServer(('localhost', port), CGIHTTPRequestHandler)

# Start the server
print(f"Starting simple HTTP server on port {port}")
httpd.serve_forever()


