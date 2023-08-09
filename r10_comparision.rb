a=10
b=20
h="hariom"
s="SACHIN"
puts "1"
puts a==b
puts "2"
puts h!=s
puts "3"
puts a>b
 puts "4"
puts a<b
 puts "5"

puts a >=b
 puts "6"
puts a<=b
 puts "7" #agr a==b(retrun 0) a>b (return 1) a<b return -1
puts a<=>b 
puts "8"
puts ((1..10)===5) #agr 1 se 10 k bich m include h 5 to true 
 puts "9"
k=1
l=1.0
 puts k==l
 puts"10"
 puts k.eql?l
 a = "xyz"
  b = "xyz"
#   because location is deffent 
a.object_id  # Output: => 20139460
b.object_id  # Output :=> 19972120
puts (a.equal? b)  # Output: => false



# because loation is same 
a = "string"
b = a
a.object_id  # Output: => 18637360
b.object_id  # Output: => 18637360
puts a.equal? b  # Output: => true



String === "zen"  # Output: => true
Range === (1..2)   # Output: => true
Array === [1,2,3]   # Output: => true
Integer === 2   # Output: => true


minutes = 15
if (10..20) === minutes
  puts "match"
else
  puts "no match"
end
# Output: match