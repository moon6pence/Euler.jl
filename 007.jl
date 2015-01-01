# https://projecteuler.net/problem=7 
N = 10001

# count 2 and 3 first
count = 2

# isfrime
function isprime(x)
    for i = 2:floor(Integer, sqrt(x))
        x % i == 0 && return false;
    end

    return true
end

# println(isprime(10))
# println(isprime(11))

# find primes in 6n-1, 6n+1
n = 1
while true
    isprime(6*n-1) && (count += 1)
    if count >= N
        println(6*n-1)
        break
    end

    isprime(6*n+1) && (count += 1)
    if count >= N
        println(6*n+1)
        break
    end

    n += 1
end