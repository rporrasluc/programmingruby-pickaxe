require 'open-uri'

open('https://pragprog.com') do |f|
  puts f.read.scan(/<img alt=".*?" src="(.*?)"/m)
end