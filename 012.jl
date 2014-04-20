N = 0
inc = 1
count = 0

while count <= 500
	N += inc
	inc += 1
	count = 0

	for i = 1:ifloor(sqrt(N)) - 1
		if N % i == 0
			count += 2
		end
	end

	if N % ifloor(sqrt(N)) == 0
		count += 1
	end

	println(N, ":", count)
end

println("Answer: ", N)