# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

def pig_it(pig_string)
  string_array = pig_string.split(' ')
  result = ''
  string_array.each do |word|
    result << word[1..-1]
    result << word[0]
    if word.match(/\w/)
      result << 'ay '
    end
  end
  result
end



print pig_it('Hello world !') # igPay atinlay siay oolcay