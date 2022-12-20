bubbles = [4,3,78,2,0,2]

def bubble_sort(bubbles)
  bubbles.each_with_index do |bubble, idx|
    if bubbles[idx + 1] != nil && bubble > bubbles[idx + 1] 
      empty = bubble
      bubbles[idx] = bubbles[idx + 1]
      bubbles[idx + 1] = empty
      p bubbles
    end
  end 
  bubbles.each_with_index do |bubble, idx|
    if bubbles[idx + 1] != nil && bubble > bubbles[idx + 1]
      bubble_sort(bubbles)
    end
  end
  bubbles
end

bubble_sort(bubbles)


