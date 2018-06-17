def reverse_words(phrase)
  arr = phrase.split(" ")
  result = arr.map { |word|
    if word.length > 5 
      word = word.reverse
    end
    word
  }
  puts result.join(" ")
end

def reverse_words(phrase)
  words = []
  phrase.split(" ").each do |word| 
    words << (word.length >5? word.reverse : word)
  end
  words.join(" ")
end


puts reverse_words("Hey fellow scholars")
puts reverse_words("This is a test")
puts reverse_words("This is another test")