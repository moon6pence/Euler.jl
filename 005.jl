# https://projecteuler.net/problem=5

# Straightforward version with simple assumtion
N = 19 * 17 * 13 * 11 * 7 * 5 * 3 * 2
while N % [1:20] != zeros(20)
	N += 19 * 17 * 13 * 11 * 7 * 5 * 3 * 2
end
println(N)

# Better version
N = 1
for i = 2:20
	N *= div(i, gcd(N, i))
end
println(N)