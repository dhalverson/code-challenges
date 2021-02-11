# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

def pig_it(pig_string)
  string_array = pig_string.split(' ')
  result = []
  sentence = ''
  string_array.each do |word|
    result << word.chars[1..-1]
    result << word.chars[0]
    result << 'ay '
    sentence << result.flatten.join
  end
end



print pig_it('Pig latin is cool') # igPay atinlay siay oolcay