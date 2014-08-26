# encoding: utf-8

def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

# Basics...
# puts show_regexp('very interesting', /t/)
# puts show_regexp('Fats Waller', /lle/)
# puts show_regexp('Fats Waller', /z/)

# Escaping...
# puts show_regexp('yes | no', /\|/)
# puts show_regexp('yes (no)', /\(no\)/)
# puts show_regexp('are you sure?', /e\?/)

# Delimiters...
str = "this is\nthe time"
# puts show_regexp(str, /^the/)
# puts show_regexp(str, /is$/)
# puts show_regexp(str, /\Athis/)
# puts show_regexp(str, /\Athe/)
# puts show_regexp(str, /is\Z/)
# puts show_regexp(str, /time\z/)

# Boundaries
# puts show_regexp(str, /\bis/) # => this ->is<-\nthe time
# puts show_regexp(str, /\Bis/) # => th->is<- is\nthe time

# Character classes
# puts show_regexp('Price $12.', /[aeiou]/)
# puts show_regexp('Price $12.', /[\s]/)
# puts show_regexp('Price $12.', /[$.]/)

a = 'see [The PickAxe-page 123]'

# puts show_regexp(a, /[A-F]/)
# puts show_regexp(a, /[A-Fa-f]/)
# puts show_regexp(a, /[0-9]/)
# puts show_regexp(a, /[0-9][0-9]/)

# Negations
# puts show_regexp('Price $12.', /[^A-Z]/)
# puts show_regexp('Price $12.', /[^\w]/)
# puts show_regexp('Price $12.', /[a-z][^a-z]/)

# Abbreviations
# puts show_regexp('It costs $12.', /[\s]/)
# puts show_regexp('It costs $12.', /[\d]/)

# Encoding
# puts show_regexp('über.', /(?a)\w+/) # => ASCII
# puts show_regexp('über.', /(?d)\w+/) # => Default
# puts show_regexp('über.', /(?a)\w+/) # => Unicode

# Macros
# puts show_regexp('Price $12.', /[aeiou]/)
# puts show_regexp('Price $12.', /[[:digit:]]/)
# puts show_regexp('Price $12.', /[[:space:]]/)
# puts show_regexp('Price $12.', /[[:^alpha:]]/)
# puts show_regexp('Price $12.', /[[:punct:]aeiou]/)

# .
a = 'It costs $12.'
# puts show_regexp(a, /c.s/)
# puts show_regexp(a, /./)
# puts show_regexp(a, /\./)

a = 'The moon is made of cheese'
# puts show_regexp(a, /\w+/)
# puts show_regexp(a, /\s.*\s/)
# Its lazy version...
# puts show_regexp(a, /\s.*?\s/)
# puts show_regexp(a, /[aeiou]{2,99}/)
# puts show_regexp(a, /mo?o/)
# puts show_regexp(a, /mo??o/)

# Search duplicate letter using \1 refering to first ocurrence
# puts show_regexp('Mississippi', /(\w+)\1/)

# Search duplicated using names
# str = 'He said "Hello"'
# puts show_regexp(str, /(?<char>\w)\k<char>/)

# str = 'Mississippi'
# puts show_regexp(str, /(?<seq>\w+)\k<seq>/)

# Using as variables requires the literal regexp to appear on the left of the =~
/(?<hour>\d{2}):(?<min>\d{2})(?<tz>..)/ =~ "12:50am"
# puts "Hour is #{hour}, minute #{min}"
puts "Hour is #{hour}, minute #{$2}. Timezone: #{$3}"