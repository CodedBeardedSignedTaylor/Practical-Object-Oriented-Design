# Gear Class

class Gear
  attr_reader :charinring, :cog, :wheel

  # Wheel is nil by default (if not supplied)
  def initialize(chainring, cog, wheel=nil)
    @chainring  = chainring
    @cog        = cog
    @wheel      = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

# Wheel Class

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim    = rim
    @tire   = tire
  end

  def diameter
    rim + (tire * 2)
  end

  # We've added circumference here. We used the foundation and granular methods
  # that we built earlier to create an easy path to creating a new feature!
  def circumference
    diameter * Math::PI
  end
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

@gear = Gear.new(52, 11, @wheel)

puts @gear.gear_inches
puts @gear.ratio
