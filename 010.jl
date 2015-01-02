# https://projecteuler.net/problem=10
N = 2 * 1000 * 1000 

# add 2 and 3 first
sum = 2 + 3

# isprime
function isprime(x)
    for i = 2:floor(Integer, sqrt(x))
        x % i == 0 && return false;
    end

    return true
end

# println(isprime(10))
# println(isprime(11))

# find primes in 6n-1, 6n+1
for n = 6:6:N
    isprime(n - 1) && (sum += n - 1)
    isprime(n + 1) && (sum += n + 1)
end

println(sum)