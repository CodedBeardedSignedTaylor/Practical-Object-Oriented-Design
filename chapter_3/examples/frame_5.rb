module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end
  end
end

module GearWrapper
  def self.gear(args)
    # Calling an external model. 
    SomeFramework::Gear.new(args[:chainring], args[:cog], args[:wheel])
  end
end
