require 'pry';

def change_case(string)
  changed_array = []
  string.chars.map do |char|
    if char == char.downcase
      changed_array << char.upcase
    elsif char == char.updase
      changed_array << char.downcase
    end
  end
  return changed_array.join("")
end

print change_case("hello world")