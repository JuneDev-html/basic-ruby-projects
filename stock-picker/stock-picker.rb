prices = [17,3,6,9,15,8,6,1,10]
def stock_picker(prices)
  max_profit = -1.0/0.0
  best_days = []
  prices.each_with_index do |l_pointer, l_idx|
    prices.each_with_index do |r_pointer, r_idx|
        if (r_pointer - l_pointer) > max_profit && l_idx < r_idx
          max_profit = r_pointer - l_pointer
          best_days[0] = l_idx
          best_days[1] = r_idx
        end
    end
  end
  best_days
end

p stock_picker(prices)