def stock_picker(prices)
    #create a hash with day 0 
    days = Array(0..prices.length-1)
    days_pairs = []
    price_pairs = []
    
    #creating new arrays for possible combos of days for buy and sell
    # and for prices combinations on those days to be able to calculate the profit
    days.combination(2) {|combination| days_pairs.push(combination) }
    prices.combination(2) {|combination| price_pairs.push(combination)}
    
    profits = price_pairs.map do |pair|
        pair.reduce {|profit, sell| (-1 * profit) + sell}
    end

    max = profits.max


    data_day_profit = convert_arrays_to_hash(days_pairs,profits)
    #find the value with max profits, return k-v pair for that with the days combo and return the days combo, since it is the first element of the array
    p data_day_profit.key(max)
   
end

def convert_arrays_to_hash(a,b)
    hash = {}
    for i in (0..(a.length - 1))
        hash[a[i]] = b[i]
    end
hash

end

stock_picker([17,3,6,9,15,8,6,1,10])