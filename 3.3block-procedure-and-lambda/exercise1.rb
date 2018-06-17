def detect_int ( *lambdas)
  detect = 1
  while lambdas.length >= 1
    if lambdas.all? {|lbd| lbd.call(detect)}
      break
    end
    detect += 1
  end
  detect
end 


lam1 = lambda { |x| x > 9 }
lam2 = lambda { |x| x**0.5 % 1 == 0 }

puts detect_int
# return 1

puts detect_int lam1
# return 10

puts detect_int lam2
# return 1

puts detect_int lam1, lam2
# return 16

# Clue
# This method is your best friend here: 
# https://apidock.com/ruby/Enumerable/all%3F