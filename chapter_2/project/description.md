## Clock Application

I always like to rebuild something that's technically simple and easy but in a
different way. Let's take a clock method for example here. We want the clock
to exhibit the following qualities:

* Be able to return the current time
* Be able to move (or tick) at the pace of anywhere from 0.01 - 60 seconds
* Tell us when a second has passed
* Tell us when a minute has passed
* tell us when an hour has passed

The implementation is pretty straightforward, but the refactoring process can
get an little bit interesting.
