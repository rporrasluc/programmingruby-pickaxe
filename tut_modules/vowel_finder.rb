class VowelFinder
  include Enumerable

  def initialize(string)
    @string = string
  end

  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end
# vf = VowelFinder.new("Programar es divertido, programar es facilito.")
# Concats vocals
# puts vf.inject(:+)
# Same as...
# vf.each { |vowel| print vowel }