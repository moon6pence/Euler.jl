# https://projecteuler.net/problem=15

const N = 20
table = zeros(Int, N + 1, N + 1)

# left top coner
table[1, 1] = 1

# first row and column
for i = 2 : N+1
	table[1, i] = 1
	table[i, 1] = 1
end

# fill table
for y = 2 : N+1
	for x = 2 : N+1
		table[y, x] = table[y - 1, x] + table[y, x - 1]
	end
end

# print result
println(table[N+1, N+1])