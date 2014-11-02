require 'open-uri'
page = "podcasts"
file_name = "#{page}.html"
web_page = open("https://pragprog.com/#{page}")
begin
  output = File.open(file_name, "write mode")
	while line = web_page.gets
    output.puts line
  end
  output.close
rescue Exception
  STDERR.puts "Failed to download #{page}: #{$!}"
  output.close
  File.delete file_name
  raise
end