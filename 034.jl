# https://projecteuler.net/problem=34
answer = 0

# 9! = 362880 and 7 digits cannot exceed 9! * 7
for num = 3:9999999
	if num == sum([factorial(int(ch - '0')) for ch in string(num)])
		# println(num)
		answer = answer + num
	end
end

println(answer)