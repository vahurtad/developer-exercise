class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str = str.gsub(/\b[a-z]+{5,}\b/, 'marklar') #first, find all lowercase words exceeding 4 characters and replace
    str = str.gsub(/\b[A-Z][\w']+{5,}\b/, 'Marklar') #second, find all uppercase words exceeding 4 characters and replace
    return str
end

  # Helper function to find Fibonacci formula
  # returns the fibonacci result to the nth term
  def self.fib(nth)
    #using Binet's Fibonacci Formula to run function in O(1) time
    #http://mathworld.wolfram.com/BinetsFibonacciNumberFormula.html
    phi = (1 + Math.sqrt(5)) / 2
    return ((phi**nth) / Math.sqrt(5)).round
  end
  
# Return the sum of all even numbers in the Fibonacci sequence, up to
# the "nth" term in the sequence
# eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
# and the sum of its even numbers is (2 + 8) = 10
def self.even_fibonacci(nth)
    #algorithm to print fibonacci sequence
    $i = 1
    $sum = 0
    while $i <= nth do
      y = Exercise.fib($i) # O(1)
      if y%2===0 
        $sum += y
      end
      $i += 1
    end # while loop run time:  O(nth)
    return $sum
end
print Exercise.even_fibonacci(11)

end
