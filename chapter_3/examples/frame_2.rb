# We're showing off some dependency injection stuff here.

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog = cog
    # We're passing in any object named wheel here.
    @wheel = wheel
  end

  def gear_inches
    # If the wheel object we passed in, has a diameter method, it works!
    # This is a lot better than just depending on a Wheel class. We
    # have more options and less dangerous dependencies.
    ratio * wheel.diameter
  end
end
