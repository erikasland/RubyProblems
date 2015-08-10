def time_conversion(minutes)
	hrs = 0
	seconds = minutes * 60
		
	if minutes >= 60
		hrs = minutes / 60
		min = Time.at(seconds).utc.strftime(":%M")
		return "#{hrs}#{min}"
	elsif minutes < 60
		hrs = 0
		min = Time.at(seconds).utc.strftime(":%M")
		return "#{hrs}#{min}"
	end
end

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)