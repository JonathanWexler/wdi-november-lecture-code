
class Car
  attr_accessor :speed, :top_speed, :direction, :destination

  def initialize(top_speed=80)
    @top_speed = top_speed
    @direction = "forward"
    @destination = "home"
  end

  def go_forward
      @direction = "forward"
  end

  def reverse
      @direction = "backwards"
  end

  def accelerate(speed)
    @speed = speed if speed <= top_speed
  end
  def driving?
      return true if @speed > 0
  end

end