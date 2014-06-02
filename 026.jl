# https://projecteuler.net/problem=26

max_N = 0
max_len = 0

for N = 1:1000
	mod = 10 ^ ifloor(log10(N))
	list = Int[]

	while mod != 0
		append!(list, [div(mod * 10, N)])
		mod = mod * 10 % N

		for i = 4:div(length(list), 2)
			if list[end-(i-1):end] == list[end-(i*2-1):end-i]
				println(N, " : ", list[end-(i-1):end])

				if i > max_len
					max_len = i
					max_N = N
				end

				# stop loop
				mod = 0
			end
		end
	end
end

println(max_N)