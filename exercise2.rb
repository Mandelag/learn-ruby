# using the String reverse method
def reverse_words(words)
  puts words.reverse
end

# using string iterator
def reverse_words(words)
  result = ""
  words.each_char do |c|
    result = c + result
  end
  puts result
end

# using integer iterator
def reverse_words(words)
  result = ""
  (words.length()-1).downto(0) do |i|
    print words[i]
  end
end
reverse_words("Hello, Ruby!")
