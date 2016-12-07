class Car
  attr_accessor :speed
  @speed = 0

  def initialize
    @speed = 0
  end

  def accelerate(change)
    @speed += change
  end

  def speed
    @speed
  end
end