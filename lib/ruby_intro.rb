# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
sum = 0 if arr.length ==0
sum = arr[0] if arr.length ==1
if arr.length >1
  m=arr.sort.reverse[0]
  n=arr.sort.reverse[1]
  sum=m+n
end
return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length - 1
      k = i + 1
      for k in k..arr.length - 1
        sum = arr[i] + arr[k]
        if sum == n
        result = 1
        end
      end
  end

if result==1
  return true
else
  return false
end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s[0] =~ /[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (/\A(([10]*00)|(0{1}))\z/).match(s)!= nil
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price <=0
    #instance variable that can be read and write
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f" %@price)
  end
end
