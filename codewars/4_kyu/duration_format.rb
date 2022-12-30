# Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.

# The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.

# It is much easier to understand with an example:

# * For seconds = 62, your function should return 
#     "1 minute and 2 seconds"
# * For seconds = 3662, your function should return
#     "1 hour, 1 minute and 2 seconds"
# For the purpose of this Kata, a year is 365 days and a day is 24 hours.

# Note that spaces are important.

# Detailed rules
# The resulting expression is made of components like 4 seconds, 1 year, etc. In general, a positive integer and one of the valid units of time, separated by a space. The unit of time is used in plural if the integer is greater than 1.

# The components are separated by a comma and a space (", "). Except the last component, which is separated by " and ", just like it would be written in English.

# A more significant units of time will occur before than a least significant one. Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.

# Different components have different unit of times. So there is not repeated units like in 5 seconds and 1 second.

# A component will not appear at all if its value happens to be zero. Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.

# A unit of time must be used "as much as possible". It means that the function should not return 61 seconds, but 1 minute and 1 second instead. Formally, the duration specified by of a component must not be greater than any valid more significant unit of time.

def format_duration(seconds)
  minutes = seconds/60
  hours = minutes/60
  days = hours/24
  years = days/365
  
  if seconds == 0
    puts "now"
  elsif seconds == 1
    "1 second"
  elsif seconds < 60
    "#{seconds} seconds"
  elsif minutes == 60 && days < 1 && years < 1
    "1 hour"
  elsif minutes >= 60 && days < 1 && years < 1
    minutes_remaining = minutes % 60
  elsif seconds % 60 == 0 && minutes == 1
    "1 minute"
  elsif seconds % 60 == 0 && minutes > 1
    "#{minutes} minutes"
  elsif seconds % 60 != 0 && minutes >= 1
    seconds_remaining = seconds % 60
    if minutes.floor == 1 && seconds_remaining == 1
      "1 minute and 1 second"
    elsif minutes.floor == 1 && seconds_remaining > 1
      "#{minutes.floor} minute and #{seconds_remaining} seconds"
    else 
      "#{minutes.floor} minutes and #{seconds_remaining} seconds"
    end 
  end 
end