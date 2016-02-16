# Lazy creation stuff

class Gear
  attr_reader :chainring, :cog, :wheel, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def wheel
    # Defers the creation of a wheel class until necessary.
    # We still have a dangerous dependency though.
    @wheel ||= Wheel.new(rim, tire)
  end
end
