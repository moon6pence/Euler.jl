# https://projecteuler.net/problem=19

const month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days = 0
sundays = 0

for year = 1900:2000
	for month = 1:12
		# check if it is sunday
		if days % 7 == 6 && year != 1900
			sundays = sundays + 1
		end

		# move to next month
		days = days + month_days[month]

		# check leap year
		if month == 2 && year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
			days = days + 1
		end 
	end
end

println(sundays)