bubbles = [4,3,78,2,0,2]

def bubble_sort(bubbles)
  bubbles.each_with_index do |bubble, idx|
    if bubbles[idx + 1] != nil && bubble > bubbles[idx + 1] 
      bubbles[idx], bubbles[idx + 1] = bubbles[idx + 1], bubbles[idx]
    end
  end 
  bubbles.each_with_index do |bubble, idx|
    if bubbles[idx + 1] != nil && bubble > bubbles[idx + 1]
      bubble_sort(bubbles) # RECURSION BABY!
    end
  end
  bubbles
end

p bubble_sort(bubbles)


