class Timer
  #write your code here
  attr_accessor :seconds

  def seconds(input = 0)
    @seconds = input
    return @seconds
  end

  def time_string
    hours = @seconds/3600
      if hours < 10
        hours = "0" + hours.to_s
      else
        hours = hours.to_s
      end
    minutes = (@seconds%3600)/60
      if minutes < 10
        minutes = "0" + minutes.to_s
      else
        minutes = minutes.to_s
      end
    secs = @seconds%60
        if secs < 10
          secs = "0" + secs.to_s
        else
          secs = secs.to_s
        end
      time = [hours, minutes, secs].join(":")
    @output = time
    return @output
  end
end
