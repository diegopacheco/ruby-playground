books = {}
ratings = Hash.new {0}
ratings[1] = 0
ratings[2] = 5
ratings[3] = 10

books.values.each { |rate|
  ratings[rate] += 1
}

puts ratings