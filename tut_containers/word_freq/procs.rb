def generate_proc
  value = 1
  -> a, *b, &block do
    puts "a = #{a.inspect}"
    puts "b = #{b.inspect}"
    block.call(value += value)
  end
end

proc1 = generate_proc

puts proc1.call(1, 2, 3) { |value| puts "Valor: #{value}" }
puts proc1.call(1, 2, 3) { |value| puts "Valor: #{value}" }

# "Value" variable is shared between closures