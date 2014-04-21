# https://projecteuler.net/problem=22
str = readall("names.txt")
names = sort(matchall(r"[A-Z]+", str))

sum_score = 0
for j = 1:length(names)
	score = 0
	name = names[j]
	for k = 1:length(name)
		score += int(name[k]) - int('A') + 1
	end
	sum_score += score * j
end

println(sum_score)