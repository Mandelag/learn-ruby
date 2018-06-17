spoken    = lambda { |phrase|  (phrase.capitalize+".") }
puts spoken.call("Aloha") # return "Aloha."

shouted   = lambda { |phrase| phrase.upcase + "!" }
puts shouted.call("Aloha") # return "ALOHA."

whispered = lambda { |phrase| "..."+phrase.downcase + "..."}
puts whispered.call("Aloha") # return "aloha."


greet = lambda do |methods, x|
  methods.call(x)
end

puts greet.call(spoken, "Halo")     # return "Halo."
puts greet.call(shouted, "Halo")    # return "HALO!"
puts greet.call(whispered, "Halo")  # return "halo."