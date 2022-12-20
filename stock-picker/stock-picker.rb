prices = [17,3,6,9,15,8,6,1,10]
def stock_picker(prices)
  biggest_difference = -1.0/0.0
  best_return = []
  # start pointer 1 holding left position
  prices.each_with_index do |left_pointer, l_idx|
    # start pointer 2 moving along right position but only if its after pointer 1
    prices.each_with_index do |right_pointer, r_idx|\
      if l_idx < r_idx #only if number is after pointer 1
        if (right_pointer - left_pointer) > biggest_difference # if the difference between the two is the biggest yet, update info
          biggest_difference = right_pointer - left_pointer
          best_return[0] = left_pointer
          best_return[1] = right_pointer
        end
      end
    end
  end

  best_return
end

p stock_picker(prices)