=begin
puts "enter the number "
num=gets.chomp.to_i
case num
when 0,2,4,6,8,10
puts "number is even "    
when 1,3,5,7,9
    puts "number is odd"
else
    puts "invalid input"
end 

puts "enter the number "
num=gets.chomp.to_f
case num%2
when 0
    puts "even "
when 1
    puts "odd"
else
    puts "invalid"
end
=end
puts "enter the number "
num=gets.chomp.to_f
case num%2
when 0 then
    puts "even "
when 1 then
    puts "odd"
end
