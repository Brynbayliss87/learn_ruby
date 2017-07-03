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
