class Fibonacci
  # Iterative version
  def fib_iterator(n)
    arr = [0, 1]
    (2...n).each do |i|
      arr << arr[-1] + arr[-2]
    end
    arr.take(n)  # In case n is 1, we need to ensure to return the correct length array
  end

  # Recursive version
  def fibs(n)
    puts "This was printed recursively"
    return [0] if n == 1
    return [0, 1] if n == 2

    arr = fibs(n - 1)
    arr << arr[-1] + arr[-2]
  end
end

# Example usage
fibonacci = Fibonacci.new
puts fibonacci.fib_iterator(8).inspect  # => [0, 1, 1, 2, 3, 5, 8, 13]
puts fibonacci.fibs(8).inspect         # => [0, 1, 1, 2, 3, 5, 8, 13]

