# https://projecteuler.net/problem=2

sum = 0
n1 = 1
n2 = 2

# add 1 first
sum += 2

# start from 3
while n1 + n2 < 4000000
	if (n1 + n2) % 2 == 0
		sum += n1 + n2
	end

	n1, n2 = n2, n1 + n2
end

# answer
println(sum)