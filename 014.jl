# https://projecteuler.net/problem=14

function solve()
    memo = Dict{Int, Int}()
    memo[1] = 1

    maxlength = 1
    answer = 1

    for i = 2 : 1000 * 1000
        sequence = i
        length = 1
        # print(sequence)

        while sequence != 1
            if haskey(memo, sequence)
                length += memo[sequence] - 1
                break
            elseif sequence % 2 == 0
                sequence = div(sequence, 2)
            else
                sequence = 3 * sequence + 1
            end

            length += 1
            # print(" -> $sequence")
        end

        # println("\nlength = $length")
        memo[i] = length

        if length > maxlength
            maxlength = length
            answer = i
        end
    end

    println("answer:$answer maxlength:$maxlength")
end

solve()