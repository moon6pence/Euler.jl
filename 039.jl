# https://projecteuler.net/problem=39
max_N = 120
max_count = 3

for N = 121:1000
	count = 0

	# from theta = 45 to half of perimeter
	for a1 = int(N * sqrt(2) / (sqrt(2) + 1 + 1)) : div(N, 2) - 1
		for a2 = div(a1, 2) + 1 : a1 - 1 # TODO: loop for a2 >= a3
			a3 = N - a1 - a2

			if a3 <= a2 && a1^2 == a2^2 + a3^2
				count += 1
			end
		end
	end

	# println(N, " ", count)

	if count > max_count
		max_N = N
		max_count = count
	end
end

println(max_N)