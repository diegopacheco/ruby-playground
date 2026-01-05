def sum_all(*numbers)
  numbers.sum
end

def first_and_rest(first, *rest)
  puts "First: #{first}"
  puts "Rest: #{rest}"
end

def with_options(name, **options)
  puts "Name: #{name}"
  puts "Options: #{options}"
end

def everything(*args, **kwargs, &block)
  puts "Args: #{args}"
  puts "Kwargs: #{kwargs}"
  block.call if block
end

puts sum_all(1, 2, 3, 4, 5)
first_and_rest(1, 2, 3, 4)
with_options("test", color: "red", size: 10)

arr = [1, 2, 3]
hash = {a: 1, b: 2}
puts [0, *arr, 4]
puts({c: 3, **hash})

everything(1, 2, x: 10, y: 20) { puts "Block called!" }
