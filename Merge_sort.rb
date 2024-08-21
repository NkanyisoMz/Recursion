def merge_sort(arr)
  # Base case: an array with 0 or 1 element is already sorted
  return arr if arr.length <= 1

  # Split the array into two halves
  mid = arr.length / 2
  left_half = arr[0...mid]
  right_half = arr[mid..-1]

  # Recursively sort both halves
  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  # Merge the sorted halves together
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted = []

  # Compare the elements of the left and right arrays and merge them
  until left.empty? || right.empty? do
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  # Concatenate any remaining elements
  sorted + left + right
end

# Example usage
puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).inspect  # => [0, 1, 1, 2, 3, 5, 8, 13]
puts merge_sort([105, 79, 100, 110]).inspect       # => [79, 100, 105, 110]
