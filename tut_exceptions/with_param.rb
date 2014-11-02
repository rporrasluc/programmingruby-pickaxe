begin
  eval string
rescue SyntaxError, NameError => boom
  print "String doesn't compile: " + boom.inspect
rescue StandardError => bang
  print "Error running script: " + bang.inspect
end