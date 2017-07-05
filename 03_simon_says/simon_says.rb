def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, numrepeats = 2)
  result = ""
  numrepeats.times do
    result += (string + " ")
  end
  result.chomp(" ")
end

def start_of_word(string, index)
  string.slice(0, index)
end

def first_word(string)
  words = string.split()
  words[0]
end

def titleize(string)
  words = string.split()
  result =[]
  words.each do |word|
	  result << word.capitalize
  end
  result = result.join(" ").gsub("And", "and").gsub("The", "the").gsub("Over", "over")
  result[0] = result[0].upcase
  result
end

