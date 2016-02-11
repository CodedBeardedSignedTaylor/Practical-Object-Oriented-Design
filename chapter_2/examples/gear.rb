# Object representing a bike gear.

class Gear
  # attr_reader is an intersting choice because we're not changing the
  # values in the chainring or cog. They for all purposes are constant.
  # We can use these constants to create new variables though.
  attr_reader :chainring, :cog

  def initialize(chainring, cog)
    @chainring  = chainring
    @cog        = cog
  end

  # Calculates the wheel rotations per pedal push on a bike.
  # It does this by dividing the chainring (slots) by the number
  # of teeth on a cog.
  def ratio
    # This call is interesting because it involves converting the
    # cog to a floar instead of both the chainring and the cog.
    # This avoids any uncessary conversions to get the job done!
    chainring / cog.to_f
  end


  def gear_inches
    # We're showing how the tire goies around the rim twice
    # in estimating diameter
    ratio * (rim + (tire * 2))
  end
end
