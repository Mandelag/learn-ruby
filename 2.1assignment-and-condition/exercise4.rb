



def mix_fruit(fruits)
  price = 0
  
  fruit_price = {
    "banana"=> 5,
    "orange"=> 5,
    "apple"=> 5,
    "lemon"=> 5,
    "grapes"=> 5,
    "avocado"=> 7,
    "strawberry"=> 7,
    "mango"=> 7
  }
  
  fruits.each do |fruit|
    price += fruit_price[fruit.downcase].nil? ? 9 : fruit_price[fruit.downcase]
  end
  
  puts (1.0*price/fruits.length).round
  # clue: use ".size" method to get the size of an array
end

mix_fruit(["banana","mango","avocado"]) # will resturn: 6
mix_fruit(["melon","Mango","kiwi"]) # will resturn: 8
mix_fruit(["watermelon","cherry","avocado"]) # will resturn: 8
mix_fruit(["watermelon","lime","tomato"]) # will resturn: 9
mix_fruit(["blackBerry","coconut","avocado"]) # will resturn: 8
mix_fruit(["waterMelon","mango"]) # will resturn: 8
mix_fruit(["watermelon","pEach"]) # will resturn: 9
mix_fruit(["watermelon","Orange","grapes"]) # will resturn: 6
mix_fruit(["watermelon"]) # will resturn: 9
mix_fruit(["BlACKbeRrY","cOcONuT","avoCaDo"]) # will resturn: 8