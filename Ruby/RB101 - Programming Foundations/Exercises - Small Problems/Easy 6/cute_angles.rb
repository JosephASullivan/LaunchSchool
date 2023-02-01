DEGREE = "\xC2\xB0"

def dms(angle)
  seconds = (angle * 60 * 60).round
  minutes, seconds = seconds.divmod(60)
  degrees, minutes = minutes.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30.000) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")