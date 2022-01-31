def duplicate_encode(word)
  # word.downcase.chars.map {|x| word.downcase.count(x) > 1 ? ")" : "("}.join("")
    symbols = Hash.new;
  symbols.default = -1;
  
  word.split('').each { |c|
       if symbols[c.upcase] == -1
         symbols[c.upcase] = 1;
       else
        symbols[c.upcase] += 1;
       end
  }
  
  output = '';
  word.split('').each do |c|
    if symbols[c.upcase] > 1
      output += ")"
    else
      output += "("
    end
  end
  puts output
  return output
  end