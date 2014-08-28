# If we want to construct n-plus table or n-times table we can do this...
print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t/
  puts((1..10).collect { |n| n*number }.join(", "))
else
  puts((1..10).collect { |n| n+number }.join(", "))
end

# But it could be done more correctly using passing a Proc that is converted to block, that is...
print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t/
  block = -> n { n*number } # or lambda { |n| n*number }
else
  block = -> n { n+number }
end

puts((1..10).collect(&block).join(", "))