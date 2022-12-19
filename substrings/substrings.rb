dictionary= ["mediocre","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(input, dictionary)
  dictionary.reduce(Hash.new(0)) do |results, word| 
    results[word] += 1 if input.downcase.include?(word) #can only get it to recognize match once here
    results
  end
end

 p substring("Howdy partner, sit down! How's it going?", dictionary)