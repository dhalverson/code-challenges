# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

#  1.  The input string will always be lower case but maybe empty.

#  2.  If the character in the string is whitespace then pass over it as if it was an empty seat

str = ' gap '

# def wave(str)
#   string_size = str.size
#   counter = 0
#   result = []
#   until counter == string_size
#     str.chars.each_with_index do |char, index|
#       result << char unless index == counter
#       result << char.capitalize if index == counter
#     end
#     require 'pry'; binding.pry
#     counter += 1
#   end
#   result
# end

def wave(str)
  string_size = str.size
  counter = 0
  result = []
  until counter == str.str
    str.chars.each_with_index do |char, index|
      if char != ' '
        result << char unless index == counter
        result << char.capitalize if index == counter
      end
    end
    counter += 1
  end
  require 'pry'; binding.pry
  waves = result.each_slice(string_size).to_a
  waves.map do |wave|
    wave.join('')
  end
end


print wave(str)