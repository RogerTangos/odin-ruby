def stock_picker(arr)
# takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy 
# and the best day to sell. Days start at 0.
	buy_day = 0
	sell_day = 0

	range_buy_day = 0
	range_sell_day = 0
	range_difference = 0

	i = 0
	arr.each do |x|

		if x > arr[buy_day]
			buy_day = i
			sell_day = i
		elsif x < arr[buy_day]
			sell_day = i
		end

		p "current stock prices: [#{arr[range_buy_day]}, #{arr[range_sell_day]}]"
		# p "----"
		p "new stock prices: [#{arr[buy_day]}, #{arr[sell_day]}]"
		
		
		if (arr[buy_day] - arr[sell_day]) > range_difference
			p "PRICES RESET"
			range_buy_day = buy_day
			range_sell_day = sell_day
			range_difference = arr[buy_day] - arr[sell_day]
		end
		p "----"
		i += 1
	end

	return [range_buy_day, range_sell_day]
end
