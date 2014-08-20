def generate_proc
  value = 1
  -> { value += value }
  # Same as...
  #lambda { value += value }
end

power_proc = generate_proc

puts power_proc.call
puts power_proc.call