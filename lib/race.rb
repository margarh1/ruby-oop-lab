require_relative "car"

class Race
  @cars = []

  def initialize
    @cars = [Car.new, Car.new]
    @cars.first.accelerate(Random.rand(60))
    @cars.last.accelerate(Random.rand(60))
  end

  def cars
    @cars
  end

  def winner
    return cars.first if cars.first.speed > cars.last.speed
    cars.last
  end

  def loser
    return cars.last if winner == cars.first
    cars.first
  end
end