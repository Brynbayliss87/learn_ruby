class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end 
 

  def padded(seconds)
    seconds = seconds.to_s
    seconds = seconds.prepend("0") if seconds.length == 1
    seconds
  end 


  def time_string
    if @seconds.to_f / 60 < 1
      time = "00:00:"+ padded(@seconds) 
    else
      minutes = @seconds / 60
      hours = minutes / 60
      minutes_decimal = @seconds.to_f / 60
      seconds = minutes_decimal - minutes
      seconds = seconds * 60    
      seconds = seconds.to_i
      minutes = minutes - (hours * 60)
      time = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"  
    end
    time
  end
end
