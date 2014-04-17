# https://projecteuler.net/problem=3
N = 600851475143

function is_prime(number)
	for i in 2:ifloor(sqrt(number))
		if number % i == 0
			return false
		end
	end

	return true
end

factor = 2
largest_factor = factor
while factor <= N
	if N % factor == 0 && is_prime(factor)
		# println(factor)
		if factor > largest_factor
			largest_factor = factor
		end

		N = div(N, factor)
		factor = 2
	else
		factor += 1
	end
end

println(largest_factor)