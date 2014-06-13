# https://projecteuler.net/problem=30

function digit(num::Integer, pos::Integer)
    return div(num, 10^pos) % 10
end

sum_answer = 0

for num = 1000:999999
    length_digit = ifloor(log10(num)) + 1

    sum_digit = 0
    for i = 0:length_digit-1
        sum_digit += digit(num, i) ^ 5
    end

    if num == sum_digit
        println(num)
        sum_answer += num
    end
end

println(sum_answer)