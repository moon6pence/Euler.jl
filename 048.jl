# https://projecteuler.net/problem=48

sum = 0
for n = 1:1000
	power = 1
	for i = 1:n
		power = (power * n) % 10000000000
	end
	sum = (sum + power) % 10000000000
end

println(sum)