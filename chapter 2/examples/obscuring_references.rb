class ObscuringReferences
  attr_reader :data

  def initialize(data)
    @data = data
  end

  # Now things have changed.
  #
  # We're looking at something that references an actual object (or Struct)
  # with data attached to it. We know that a wheel can have a rim or a tire.
  # It will forever be consistent in that manner.
  def diameters
    wheels.collect { |wheel|
      wheel.rim + (wheel.tire * 2)
    }
  end

  Wheel = Struct.new(:rim, :tire)

  # Here's a new spin on our old diameters logic.
  # Please note that we're taking in random data and creating objects.
  def wheelify(data)
    data.collect { |cell|
      Wheel.new(cell[0], cell[1])
    }
  end
end

# Remember, [Rim, Tire]
# Sizes are in millimeters
@sample_data = [[622, 20], [622, 23], [559, 30], [559, 40]]
