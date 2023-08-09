name='This is a simple Ruby string literal'
puts name
x, y, z = "hariom ", "dev","sachin"
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)}."


puts x[0...3]
puts  x.length
puts ""

# General Delimited Strings
 puts %{Ruby is fun.} 
puts %Q{#{x} Ruby is fun. }  " Ruby is fun. "  #varible b print kar dega 
puts %q[#{a}Ruby is fun.]  #equivalent to a single-quoted string
# puts %x!ls! # all file i the folder equivalent to back tick command output `ls`

puts " "



puts %/ a
abs
amn
ambbjkb
jij/

#backspace
puts "my nam\b is the shrifale "
puts "my nam\cx is the shrifale "

# String method 

str ="MY NAME IS THE HARIOM "
puts str.downcase
ab="dev"
p=ab *10
puts p

x="hariom patidar "
temp=""
x.each_char do |char|
    puts char if['a','d','r'].include? char.downcase
end 
puts "   "
puts "   "
puts "   "
char_arr=x.chars# character array 
puts char_arr
puts x.length+y.size
puts x.count("a")  # Get the count of characters of a String


puts x.reverse

puts x.include?("a")# Search for one or more characters of a String


#  Replace characters in a String
puts "Red, Red and Blue".gsub("Red", "Orange") 
puts "Red, Red and Blue".sub("Red", "Orange") 
puts "organization".gsub("z", 'z' => 's') 

puts ""
#  Split a String=Split a String based on a delimiter (the default is space) or pattern.

sentence="shriffle is the best technology compay"
words=sentence.split("")
puts words 
sentence = "     June 27,June 26,June 25             "
puts sentence
puts words = sentence.split(/,/, 2)
# Trim a String
puts sentence.strip

# . Add a String before another String
a="world"
z=a.prepend("hellow ")
puts z

# Insert a String

# Add one or more characters to a specific position of a String.
a="my name is the hariom "
m=a.insert(a.length,"ram")
puts m

n=a.upcase
puts n
puts n.downcase
puts" "
puts n.capitalize!
 str ="hEllO WorlD"
 puts str.swapcase

 #Add Strings=str.concat or <<

 puts str.concat(" ").concat(a)
 puts str<<a
 
#  Get a substring the str.slice
str ="hellow world "
puts str.slice(0,8) #print (0 to to 8 cahracter)


str1="hariom.."
puts str.start_with?("h") # true 
puts str.end_with?("m") #false because last is (.)
puts str.empty? #false


str="hellow world"
puts str.capitalize #change parmanent original string 
puts str.casecmp(str1) #comapre to string agr str >str1 print 1 and both are equal 0 and str1 >str so print -1

puts str.crypt("hariom") # one way cryptograpic 
# return a copy of str with all character in deleted character
# puts str.delete("he")
#permanent delete the cahracter 
# puts str.delete!("he")

puts str.lstrip

#center the console 
puts str.center(40)
puts "abc \0\0abc \0\0".unpack('A6Z6') 
