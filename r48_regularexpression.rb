num1="hariom patidaR "
num2="987654321"
 puts (num1=~/ri/) #return the index

 puts (num1.match(/om/)) #return string 
 puts (num1.match("pa")) #return string 

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
   puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
   puts "Line2 contains  Dogs"
end

#   Does the string contain a vowel?
def contains_vowel(str)
  str =~ /[aeiou]/
end
puts contains_vowel("test") # returns 1
puts contains_vowel("sky")  # returns nil



    # [0-9] matches any number from 0 to 9
    # [a-z] matches any letter from a to z (no caps)
    # [^a-z] negated range
    def contains_number(str)
  str =~ /[0-9]/
end

puts contains_number("The year is 2015")  # returns 12
  def contains_number(str)
  str =~ /[a-z]/
end
puts contains_number("The cat is black")  # returns nil




#     \w is equivalent to [0-9a-zA-Z_]
#     \d is the same as [0-9]
#     \s matches white space (tabs, regular space, newline)

# There is also the negative form of these:

#     \W anything that’s not in [0-9a-zA-Z_]
#     \D anything that’s not a number
#     \S anything that’s not a space



puts "fakjsfj98rf99009j".match(/\d.\d/)
# If we don't escape, the letter will match
puts ""
puts "5a5".match(/\d.\d/) #interger k bad m kuch b 

# In this case only the literal dot matches
puts "5a5".match(/\d\.\d/) # nil
puts "5.5".match(/\d\.\d/) # match interger or dot
puts "5abt5.5vt5".match(/\D/) # match do not match integrer
puts "hyb.Adff79a%$7d".match(/\w\.\w/) #match (.)
puts "hSFdff79a%$7acd".match(/\w\w/) #match a-z
puts "hSFdff79a%$7acd".match(/\W\W/) #match special character
puts "hariom patidar".match(/\s/) #space 
puts "hariom patidar".match(/\S/) #do not space 


puts ""
puts "" 

# + 	1 or more
# * 	0 or more
# ? 	0 or 1
# {3,5} 	between 3 and 5
# Note that this will also match some invalid IP address
# like 999.999.999.999, but in this case we just care about the format.
def ip_address?(str)
  # We use !! to convert the return value to a boolean
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
   !!(str =~ /^\W{1,str.length}\.\w{1,3}\.\w{1,3}\.\w{1,3}$/)
end

puts ip_address?("192.168.1.1")  # returns true
puts ip_address?("0000.0000")    # returns false
puts ip_address?("har.iom.@123.") #return false 



# To match strictly at the start of a string and not just on every line (after a \n) you need to use \A and \Z instead of ^ and $

# We want to find if this string is exactly four letters long, this will
# still match because it has more than four, but it's not what we want.
puts "Regex are cool".match /\w{4}/ #start se 4 carater match hone chahhiye 
# Instead we will use the 'beginning of line' and 'end of line' modifiers
puts "Regex are cool".match /\w{4}$/ #last se 4charecter match hone chahiye
puts "Regex are cool".match /^\w{4}$/  #null last se 4 characyer match nahi chne chaiy 
# This time it won't match. This is a rather contrived example, since we could just
# have used .size to find the length, but I think it gets the idea across.


# Line = Struct.new(:time, :type, :msg)
# LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/
# def parse_line(line)
#   puts line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
# end
# parse_line("12:41 INFO User has logged in.")
# # This produces objects like this:
# # 



# (?:...) 	Non-capturing group
# (?<foo>...) 	Named group
m = "Davidhariom 30".match /(?<name>\w+) (?<age>\d+)/
puts m[:age]
# => "30"
puts m[:name]
# => "David"


# (?=pat) 	Positive lookahead
# (?<=pat) 	Positive lookbehind
# (?!pat) 	Negative lookahead
# (?<!pat) 	Negative lookbehind
def number_after_word?(str)
 if (str =~ /(?<=\w) (\d+)/)
    puts "true "
 else puts "false "
 end 
end
number_after_word?("Grade 99")