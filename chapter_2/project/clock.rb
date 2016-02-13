# Round 1!

# So, we have our Clock class.
# Now we're going to try to stuff it with as much functionality as possible.

class Clock

  # We can read / write on these variables
  attr_accessor :hour, :minute, :second

  # hour      - specified hour
  # minute    - specified minute
  # second    - specified second
  # interval  - how fast the second hand advances in real time.
  def initialize(hour, minute, second, interval)
    @hour = hour
    @minute = minute
    @second = second
    @interval = interval
  end

  # Ticks our clock for a specified number of turns.
  # Our clock tick in real time according to the clock interval.
  def wind_up(turns)
    turns.times do
      sleep(@interval)
      tick
    end
  end

  # This is like a calzone full of functionality. Better get the dipping sauce.
  # Advances the clock a second. In certain cases, the minute or hour values
  # increment.

  # This thing is a mess. So, let's start to clean it up.
  def tick
    @second += 1

    # Why do we need this nested stuff?
    # Could this be extracted into a helper method?
    if @second == 60
      @minute += 1
      puts "One minute has passed!"
      @second = 0

      # Again, why do we need this nested stuff?
      # Could this be extracted into a helper method?
      if @minute == 60
        @hour += 1
        puts "One hour has passed."
        @minute = 0
      end
    end

    puts "Tick."
  end

  # Not bad. Not bad at all. 
  def current_time
    "#{hour}:#{minute}:#{second}"
  end
end
