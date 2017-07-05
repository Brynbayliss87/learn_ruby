class Book

  attr_accessor :title
  
  def intialize(title)
    @title = title
  end
    
  def title
    words = @title.split()
    word_array = []
    words.each do |word|
      unless (word == "and") || (word == "of") || (word == "the") || (word == "in") || (word == "a") || (word == "an")
        word_array << word.capitalize
      else
        word_array << word.downcase
      end
    end
    @title = word_array.join(" ")
    @title[0] = @title[0].upcase
    @title
  end
end
