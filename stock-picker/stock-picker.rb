prices = [17,3,6,9,15,8,6,1,10]
def stock_picker(prices)
  prices.filter_map do |price|
    puts price
  end
end

stock_picker(prices)