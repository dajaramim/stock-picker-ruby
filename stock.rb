


def stock_picker(stock_prices)
    min_num = 0
    max_num = 0
    best_profit = 0
    stock_prices.each_with_index do |stock_min, index|
        stock_prices[index..-1].each do |stock_max|
            if stock_max - stock_min > best_profit
                min_num = stock_min
                max_num = stock_max
                best_profit = stock_max - stock_min
            end
        end

    end
    best_days = [stock_prices.index(min_num), stock_prices.index(max_num)]
end



stock_picker([17,3,6,9,15,8,6,1,10])