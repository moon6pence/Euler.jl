# https://projecteuler.net/problem=4

function is_palindrome(num)
    str = string(num)

    for i = 1:length(str)/2
        if str[i] != str[end-(i-1)]
            return false
        end
    end

    return true
end

max_num = 0

for a = 100:999
    for b = 100:999
        if is_palindrome(a * b) && a * b > max_num
            max_num = a * b
        end
    end
end

println(max_num)