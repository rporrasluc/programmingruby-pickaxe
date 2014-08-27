# Hashes...
replacement = { "cat" => "gatito", "dog" => "perrancano" }
replacement.default = "eso que es"
puts "cat and dog".gsub(/\w+/, replacement)

# Blocks
puts "cat and dog".gsub(/a/) { |a| a.upcase }