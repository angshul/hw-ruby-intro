# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  if arr.length==0
    return 0
  end  
  for i in 0...arr.length
    sum+=arr[i]
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    return 0
  end
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length==0 or arr.length==1
    # returning any combination of two elements in the array that add up to sum
  arr.combination(2).any? {|a, b| a + b==n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #regex to check if the string starts with consonants
  if /\A(?=[^aeiou])(?=[a-z])/i.match(s)!=nil then
     return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
 if s.length==1 && s=='0'
   return true
 end
  # regex to check for binary multiples of 4 (ending with 00)
 if /\A[01]*00\z/.match(s)!=nil then
   return true
 end  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE

 def initialize(isbn,price)
   # raise errors if price is not a positive no or if no isbn is entered
   raise ArgumentError.new("Not valid number") if price<=0
    raise ArgumentError.new("Not valid number") if isbn.length==0
   @isbn=isbn
   @price=price
   
 end
 
  #getter methods
 def isbn
   @isbn
 end

def price
  @price
end

  #setter methods
def price=(p)
  @price=p
end

def isbn=(i)
  @isbn=i
end  

def price_as_string()
  # converting integer price to float
  price='%.2f' % @price
  # converting price to string
  return "$"+price.to_s
end  
 
end
