# Excercise 1
# fpl = favorite programming language

def fpl_if(bahasa)
  bahasa = bahasa.downcase
  if bahasa === "python"
    puts "snakey snakey casey casey"
  elsif bahasa === "ruby"
    puts "Hideo Kojima"
  elsif bahasa === "java"
    puts "Duke!"
  elsif bahasa === ".net"
    puts "ArcObjects! Wait for me!"
  else
    puts "Languages are good!"
  end
end

def fpl(bahasa)
  puts "What is your favorite "+bahasa+" language?"
  language = gets.chomp
  fpl_if(language)
end

fpl("programming")
