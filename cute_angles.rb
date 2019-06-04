# Write a method that takes a floating point number that represents 
# an angle between 0 and 360 degrees and returns a String that 
# represents that angle in degrees, minutes and seconds. You should 
# use a degree symbol (°) to represent degrees, a single quote (') 
# to represent minutes, and a double quote (") to represent seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

MINUTES_DEGREE = 60
SECOND_MINUTES = 60
SECONDS_DEGREE = MINUTES_DEGREE * SECOND_MINUTES
def dms(num)
  seconds = (num * SECONDS_DEGREE).round
  degree, rem_deg = seconds.divmod(SECONDS_DEGREE)
  minute, second = rem_deg.divmod(SECOND_MINUTES)
  format(%(#{degree}\u{B0}%02d"%02d'), minute, second)
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

