# https://projecteuler.net/problem=43

function num(list)
	return sum((10 .^ [length(list)-1:-1:0]) .* list)
end

function permutation(k, list)
	if k == 1
		# check divisible
		if num(list[2:4]) % 2 == 0 &&
		   num(list[3:5]) % 3 == 0 &&
		   num(list[4:6]) % 5 == 0 &&
		   num(list[5:7]) % 7 == 0 &&
		   num(list[6:8]) % 11 == 0 &&
		   num(list[7:9]) % 13 == 0 &&
		   num(list[8:10]) % 17 == 0
			return num(list)
		else
			return 0
		end
	else
		sum = 0

		# recursion without swap
		sum += permutation(k-1, list)

		for i = 1:k-1
			# swap list[i] list[k]
			temp = list[i]
			list[i] = list[k]
			list[k] = temp

			# recursion with swap
			sum += permutation(k-1, list)

			# swap list[i] list[k]
			temp = list[i]
			list[i] = list[k]
			list[k] = temp
		end

		return sum
	end
end

list = [0:9]
println(permutation(length(list), list))