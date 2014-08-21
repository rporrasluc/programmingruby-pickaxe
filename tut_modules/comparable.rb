class Person
  include Comparable
  attr_reader :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def to_s
    "#{@name}"
  end

  def <=>(other)
    self.age <=> other.age
  end
end

p1 = Person.new("Cristina", 22)
p2 = Person.new("Rafa", 26)
p3 = Person.new("Marta", 21)

# Compare Cristina and Rafa ages.
if p2 > p1
  puts "#{p2.name} is older than #{p1.name}."
end

# Sort by age
puts "Sorted ages:"
puts [ p1, p2, p3 ].sort