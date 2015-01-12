# https://projecteuler.net/problem=20

function solve()
    fact = BigInt(1)

    for i = 1:100
        fact *= i
    end

    str = "$fact"
    sum = 0
    for ch in str
        sum += Int(ch) - Int('0')
    end

    println(sum)
end

solve()