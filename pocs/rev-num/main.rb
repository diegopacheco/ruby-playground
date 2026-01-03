def rev_num(num)
    num.
        to_s.
        reverse.
        to_i
end

if __FILE__ == $0
    puts rev_num(12345)
    puts rev_num(1000)
    puts rev_num(987654321)
end
