h = {}
array = ["a", "the", "a", "jon", "a", "the", "class"]

array.each do |array_word|
    if h.has_key?(array_word)
      h[array_word] = h[array_word] + 1
    else
      h[array_word] = 1
    end
end

puts h.values.max