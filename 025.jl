# https://projecteuler.net/problem=25

F1 = BigInt(1)
F2 = BigInt(1)
F3 = F1 + F2
N = 3

while length(string(F3)) < 1000
	F1 = F2
	F2 = F3
	F3 = F1 + F2
	N = N + 1
end

println(N)