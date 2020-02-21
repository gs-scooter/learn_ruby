class Timer
  #write your code here
  attr_accessor :seconds

  def initialize()
    @seconds = 0
  end

  def time_string
    minutes = (@seconds / 60)
    hours = (minutes / 60)
    if hours > 0
      minutes = minutes - 60
    end
    @time_string = hours.to_s.rjust(2, "0") + ":" + minutes.to_s.rjust(2, "0") + ":" + @seconds.modulo(60).to_s.rjust(2, "0")
  end
end
