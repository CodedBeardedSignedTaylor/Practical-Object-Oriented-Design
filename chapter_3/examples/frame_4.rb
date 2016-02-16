class Gear
  attr_reader :chainring, :cog, :wheel
  # We have an argument hash now!
  def initialize(args)
    # args.fetch allows us to fall back on a default value if nothing supplied
    @chainring  = args.fetch(:chainring, 40)
    @cog        = args.fetch(:cog, 18)
    @wheel      = args[:wheel]
  end
end

Gear.new(
  :chainring => 52,
  :cog => 11,
  :wheel => Wheel.new(26, 1.5)
)
