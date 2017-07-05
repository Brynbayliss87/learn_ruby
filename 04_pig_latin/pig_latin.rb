def firstTwoLetters(word)
  char = word.slice!(0, 2)
  word += "#{char}ay"
end

def firstThreeLetters(word)
  char = word.slice!(0, 3)
  word += "#{char}ay"
end


def translate(string)
  result=""
  string = string.split(" ")
  string.each do |word|
    if word =~ /\b[aeiou]\w*/i 
      word += "ay"
      result += "#{word} "
    else
      if word[1] =~ /\b[aeiou]\w*/i
        if word[0].downcase =="q"
	   result += "#{firstTwoLetters(word)} "
	else
          char = word.slice!(0)
          word += "#{char}ay"
          result += "#{word} "
        end
      elsif word[2] =~/\b[aeiou]\w*/i
        if word[1] == "q"
          result += "#{firstThreeLetters(word)} "
	else
          result += "#{firstTwoLetters(word)} "
	end
      else result += "#{firstThreeLetters(word)} "
      end
    end
  end
  result.chomp(" ")
end

