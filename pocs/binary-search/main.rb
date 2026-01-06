def binary_search(arr, target)
  low, high = 0, arr.length - 1
  while low <= high
    mid = (low + high) / 2
    return mid if arr[mid] == target
    arr[mid] < target ? low = mid + 1 : high = mid - 1
  end
  -1
end

def binary_search_recursive(arr, target, low = 0, high = nil)
  high ||= arr.length - 1
  return -1 if low > high
  mid = (low + high) / 2
  return mid if arr[mid] == target
  arr[mid] < target ? binary_search_recursive(arr, target, mid + 1, high) : binary_search_recursive(arr, target, low, mid - 1)
end

def binary_search_builtin(arr, target)
  arr.bsearch_index { |x| x >= target }.then { |i| i && arr[i] == target ? i : -1 }
end

sorted = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
puts "Array: #{sorted}"
puts "Search 7 (iterative): index #{binary_search(sorted, 7)}"
puts "Search 7 (recursive): index #{binary_search_recursive(sorted, 7)}"
puts "Search 7 (builtin): index #{binary_search_builtin(sorted, 7)}"
puts "Search 8 (not found): index #{binary_search(sorted, 8)}"
puts "Search 1 (first): index #{binary_search(sorted, 1)}"
puts "Search 19 (last): index #{binary_search(sorted, 19)}"
