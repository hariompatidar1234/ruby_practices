time=Time.now

puts "current time:: #{time.inspect}"
puts "current year: #{time.year}"
puts "current month:: #{time.month}"
puts "current day:: #{time.day}"
puts "current week day:: #{time.wday}"
puts "current year of day :: #{time.yday}"
puts "current  24-hour clock:: #{time.hour}"
puts "current min:: #{time.min}"
puts "current sec:: #{time.sec}"
puts "current 999999: microseconds:: #{time.usec}"
puts "current UTC: timezone name:: #{time.zone}"



# July 8, 2008
puts Time.local(2023,3,5) #with time  jo time ham denge vo print hoga
# July 8, 2008, 09:10am, local time
puts Time.local(2008, 7, 8, 9, 10) # last k do elemtn time lenge 
# July 8, 2008, 09:10 UTC
puts Time.utc(2008, 7, 8, 9, 10) 
# July 8, 2008, 09:10:11 GMT (same as UTC)
puts Time.gm(2008, 7, 8, 9, 10, 11)  


puts " "
# sec,min,hour,day,month,year,wday,yday,isdst,zone]
time=Time.new
value=time.to_a
print("#{value} \n")

#[26, 10, 12, 2, 6, 2008, 1, 154, false, "MST"]
time = Time.new
values = time.to_a
puts Time.utc(*values)

# Returns number of seconds since epoch
puts time = Time.now.to_i  
# Convert number of seconds into Time object.
puts Time.at(time)
# Returns second since epoch which includes microseconds
time = Time.now.to_f
puts " "
time=Time.new
# Here is the interpretation
puts time.zone       # => "UTC": return the timezone
puts time.utc_offset # => 0: UTC is 0 seconds offset from UTC
puts time.zone       # => "PST" (or whatever your timezone is)
puts time.isdst      # => false: If UTC does not have DST.
puts time.utc?       # => true: if t is in UTC time zone
puts time.localtime  # Convert to local timezone.
puts time.gmtime     # Convert back to UTC.
puts time.getlocal   # Return a new Time object in local zone
puts time.getutc     # Return a new Time object in UTC

puts ""
time = Time.new
puts time.to_s
puts time.ctime #current dat and time 
puts time.localtime


puts time.strftime("%Y-%m-%d %H:%M:%S")
puts ("")
puts ("")
puts ("")
puts time.strftime("%a") #half name of the day in thr weekk
puts time.strftime("%A") #
puts time.strftime("%b")
puts time.strftime("%B")
puts time.strftime("%c")
puts time.strftime("%d")
puts time.strftime("%D")
puts time.strftime("%H")
puts time.strftime("%I")
puts time.strftime("%j")
puts time.strftime("%m")
puts time.strftime("%p")
puts time.strftime("%s")
puts time.strftime("%U")
puts time.strftime("%W")
puts time.strftime("%w")
puts ""
puts time.strftime("%x")
puts time.strftime("%X")
puts time.strftime("%y")
puts time.strftime("%Y")
puts time.strftime("%Z")
puts time.strftime("%%")

now = Time.now          # Current time
puts now

past = now - 10 -10        # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff

