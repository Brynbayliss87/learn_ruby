def translate(string)
  result=""
  string = string.split(" ")
  string.each do |word|
    if word =~ /\b[aeiou]\w*/i 
      word += "ay"
      result += "#{word} "
    else
      if word[1] =~ /\b[aeiou]\w*/i
        char = word.slice!(0)
        word += "#{char}ay"
        result += "#{word} "
      elsif word[2] =~/\b[aeiou]\w*/i
        char = string.slice!(0, 2)
        word += "#{char}ay"
        result += "#{word} "
      else char = string.slice!(0, 3)
        word += "#{char}ay"
        result += "#{word} "
      end
    end
  end
  result.chomp(" ")
end

