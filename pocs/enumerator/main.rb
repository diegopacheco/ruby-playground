enum = Enumerator.produce(1, size: Float::INFINITY, &:succ)
puts "enumerator size: #{enum.size}"

abs_dir = File.expand_path("./baz")
traverser = Enumerator.produce(abs_dir, size: -> { abs_dir.count("/") + 1 }) {
    raise StopIteration if it == "/"
    File.dirname(it)
}
puts "counting slashes(/) : #{traverser.size}"