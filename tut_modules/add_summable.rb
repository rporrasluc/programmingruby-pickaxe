require_relative 'vowel_finder.rb'

module Summable
  def sum
    inject(:+)
  end
end

class VowelFinder
  include Summable
end

class Array
  include Summable
end

vf = VowelFinder.new("Programar es divertido, programar es facilito.")
puts vf.sum

array = [ 1, 2, 3, 4, 5 ]
puts array.sum