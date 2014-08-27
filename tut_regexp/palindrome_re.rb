palindrome_matcher = /
\A                          # Beginning of a string
  (?<palindrome>
                            # nothing, or
    | \w                    # a single character, or
    | (?:                   # a character, a palindrome, and a character
        (?<some_letter>\w)
        \g<palindrome>      # Evaluate outer regular expression
        \k<some_letter+0>   # Matches the variable in this level of the recursion
      )
  )
\z
/x                            # Allow to use comments and spaces

match = palindrome_matcher.match "ARBOLLOBRA"
if match
  puts 'we have a palindrome!'
else
  puts "no match"
end