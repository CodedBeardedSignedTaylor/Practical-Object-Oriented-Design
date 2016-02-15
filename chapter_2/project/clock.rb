# Round 2!

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
    "Starting time: " + current time
    turns.times do
      sleep(@interval)
      tick
    end
    "Finsh Time: " + current_time
  end

  # Tick will now increment the second value.
  def tick
    @second += 1
    need_tock?
  end

  # If the second value == 60, then it will commit a tock
  def need_tock?
    if @second == 60
      @second = 0
      tock
    end
  end

  # Increments the minute value.
  def tock
    @minute += 1
  end

  # If minute value == 60, then it will commit a ticktock
  def need_tick_tock?
    if @minute == 60
      @minute = 0
      tick_tock
    end
  end

  # Advances the hour.
  # Minutes are set to 0
  # Seconds are set to 0.
  def tick_tock
    @hour += 1
    @minute = 0
    @second = 0
  end

  # Not bad. Not bad at all.
  def current_time
    "#{hour}:#{minute}:#{second}"
  end
end
