require 'net/http'

http = Net::HTTP.new('pragprog.com', 80)
response = http.get('/book/ruby3/programming-ruby-1-9')

puts response

if response.message == "OK"
  puts response.body.scan(/<img alt=".*?" src="(.*?)"/m)
end