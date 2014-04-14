# Problem 1: https://projecteuler.net/problem=1

# naive version
s = 0
for i = 1:999
	if i % 3 == 0 || i % 5 == 0 
		s += i
	end
end
println(s)

# shorter version
println(sum(3:3:999) + sum(5:5:999) - sum(15:15:999))