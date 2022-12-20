def substring(input, dictionary)
  dictionary.reduce(Hash.new(0)) do |results, word| 
    results[word] = input.downcase.scan(word).length if input.downcase.include?(word) 
    results
  end
end

dictionary = ["mediocre","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 
p substring("Howdy partner, sit down! How's it going?", dictionary)