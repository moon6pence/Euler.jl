# https://projecteuler.net/problem=16

str = string(BigInt(2) ^ 1000)
println(sum([int(str[i] - '0') for i = 1:length(str)]))