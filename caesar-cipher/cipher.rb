def caesar_cipher(string, shift)
  new_string = string.split('').map do |char|
    if char.match(/[a-z]/)
      char = char.ord + shift
      char = (char - 122) + 96 until char < 123
      char.chr
    elsif char.match(/[A-Z]/)
      char = char.ord + shift
      char = (char - 90) + 64 until char < 91
      char.chr
    else char 
    end
  end
  return new_string.join("")
end

p caesar_cipher("'Bang...' -Spike Spiegel", 30)