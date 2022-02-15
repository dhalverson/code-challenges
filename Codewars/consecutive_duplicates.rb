def remove_consecutive_duplicates(s)
  removed_duplicates_array = []
  s.split.each do |word|
    if word != removed_duplicates_array[-1]
      removed_duplicates_array << word
    end
  end
  removed_duplicates_array.join(' ')
end