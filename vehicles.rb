module Vehicle

  attr_accessor :speed, :direction

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car
  include Vehicle

  def intialize
    super
    @fuel = 10
    @make = "honda"
    @model = "accord"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike
  include Vehicle

  def initialize
    super
    @speed = 12
    @type = "road"
    @weight = 10.5
  end

  def ring_bell
    puts "Ring ring!"
  end

end

bike = Bike.new
bike.turn("North")
puts bike.direction