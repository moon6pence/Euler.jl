# https://projecteuler.net/problem=9

for c = 334:998
	for a = 1:div(1000-c, 2)
		b = 1000 - c - a

		if a^2 + b^2 == c^2
			println(a * b * c)
			break
		end
	end
end