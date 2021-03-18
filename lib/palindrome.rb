require_relative 'remove_accents'

def palindrome?(string)
    @string = clean_string(string)

    return false unless @string
    return true if @string.size <= 1
    
    @string == @string.reverse
end

def clean_string(string)
    return false unless string.kind_of?(String)

    clean_string = remove_accents(string)

    clean_string.downcase.gsub(/\W+/ , "")
end