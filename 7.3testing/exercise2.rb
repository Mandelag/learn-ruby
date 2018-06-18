class Palindrome

  def self.find_palindrome(start, n)
    palindrome = []
    counter = start
    while palindrome.length < n
      if check_palindrome(counter)
        palindrome << counter
      end
      counter += 1
    end
    palindrome
  end
  
  private 
  
  def self.check_palindrome(number)
    check_palindrome = false
    if number.to_s == number.to_s.reverse
      check_palindrome = true
    end
    check_palindrome
  end
  
end