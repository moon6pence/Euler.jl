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

i = ifloor(sqrt(N))
while i >= 2
	if N % i == 0 && is_prime(i)
		println(i)
		break
	end

	i -= 1
end