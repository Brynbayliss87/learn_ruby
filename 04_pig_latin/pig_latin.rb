def translate(string)
  if string =~ /\b[aeiou]\w*/i 
    string << "ay"
  elsif string=~ /\b[^aeiou]\w*/i
    string.prepend("ay")
  end
end

