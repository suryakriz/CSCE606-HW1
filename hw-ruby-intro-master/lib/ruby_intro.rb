# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sumArr = 0
  if arr.length == 0
    return 0
  else
    arr.each do |num|
      sumArr = sumArr + num
    end
    return sumArr
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  maxArr = []
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    maxArr = arr.max(2)
    return maxArr[0] + maxArr[1]
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  number = 0
  if arr.length < 2
    return false
  end
  arr.each do |num|
    number = n - num

    if arr.include?(number) && number != num
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = ""
  str << "Hello, "
  str << name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s[0] == "a" || s[0] == "e" || s[0] == "i" || s[0] == "o" || s[0] == "u" || s[0] == "A" || s[0] == "E" || s[0] == "I" || s[0] == "O" || s[0] == "U" || s.empty?
    return false
  elsif s[0].match?(/[[:alpha:]]/)
    return true
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if s.match?(/[[:alpha:]]/)
    return false
  end
  if s.to_i % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new(
      "isbn string is empty"
    ) if isbn.size == 0

    raise ArgumentError.new(
      "price is 0 or less than 0"
    ) if price <= 0

    @isbn = isbn

    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    return "$%0.2f" % [@price]
  end
end
