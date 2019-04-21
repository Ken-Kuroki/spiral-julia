using Random

function maximum_profit(n, xs)
    max_profit = -2000000000
    min_value = xs[1]
    
    for i in 2:n
        max_profit = max(max_profit, xs[i]-min_value)
        min_value = min(min_value, xs[i])
    end
    
    return max_profit
end

function maximum_profit_slow(n, xs)
    max_profit = -200000000
    for j in 2:n
        for i in 1:j-1
            max_profit = max(max_profit, xs[j]-xs[i])
        end
    end
    return max_profit
end


n = rand(2:200000)
xs = rand(Int, n)

@time maximum_profit(n, xs)
@time maximum_profit_slow(n, xs)
