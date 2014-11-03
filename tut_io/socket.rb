require 'socket'

client = TCPSocket.open('www.google.com', 'www')
client.send("OPTIONS /~dave/ HTTP/1.0\n\n", 0)
puts client.readlines
client.close