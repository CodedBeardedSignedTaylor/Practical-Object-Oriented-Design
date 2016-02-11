class ObscuringReferences
  attr_reader :data

  def initialize(data)
    @data = data
  end


  # Ok, this isn't good. Why?
  #
  # Its dependent on a certain strucutre of input data. Anything different from
  # the norm (at the bottom) will basically blow this thing to pieces.
  #
  # We're forcing diameters to find where the rims and tires in the array.
  def diameters
    # An index of 0 = rim
    # An index of 1 = tire
    data.collect { |cell|
      cell[0] + (cell[1] * 2)
    }
  end
end

# Remember, [Rim, Tire]
# Sizes are in millimeters
@sample_data = [[622, 20], [622, 23], [559, 30], [559, 40]]
