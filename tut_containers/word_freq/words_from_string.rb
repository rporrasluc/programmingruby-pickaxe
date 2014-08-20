def words_from_string(string)
  # [\w']+ matches sequences containing word characters and single quotes
  string.downcase.scan(/[\w']+/)
end

#p words_from_string("Hola soy rafa, tengo gafas, rimo como una jirafa, rafa.")