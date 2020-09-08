# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0,:+)
end

def max_2_sum(array)
  return 0 if array.empty?
  return array.first if array.length == 1
  array.sort.reverse.take(2).reduce(:+)
end

def sum_to_n?(arr, n)
  return false if arr.empty?||arr.length == 1
  arr.sort.combination(2).any? {|a,b| a+b == n}
end

# Part 2

def hello(name)
  str = "Hello, " + name
  return str
end

def starts_with_consonant?(s)
  if /^[^AEIOUaeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end


def binary_multiple_of_4? s
  if (s.empty? || s=~/[^01]/) 
    return false
  elsif s.to_i % 4 == 0
    return true 
  end
end

# Part 3

class BookInStock
  
  attr_reader :isbn, :price
  
  def isbn=(isbn)
    if isbn == ''
      raise ArgumentError
    end
    @isbn=isbn
  end
  
  def price=(price)
    price = price.to_f
    if price <= 0
      raise ArgumentError
    end
    @price=price
  end
  
  def initialize(isbn,price)
    self.isbn = isbn
    self.price = price
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
end