# puts (-1..9).to_a #print -1 to 9
print  (-1...9).to_a # print -1 to 8 because 3 dots exlusive last element
print ('a'..'h').to_a

# Ranges as Sequences
range=0..9
puts range.include?(3)  #check the number is present or not in the rnge 

puts "Minimum number of the range #{range.min}"
puts "Maximum number of the range #{range.max}"


ans =range.reject{|i| i%2==0}
puts "Rejected values are #{ans}"

range.each do |digit|
    puts "in Loop #{digit}"
end


# Ranges as Conditions
#  These conditions are enclosed within start statement and end statement.

budget=6000
watch=case budget
when 100..1000 then "local"
when 1000..10000 then "titan"
when 5000..30000 then "fossile"
when 30000..100000 then "rolex"
else "no stock"
end 
puts watch


# Ranges as Intervals
# Ranges can also be defined in terms of intervals. Intervals are represented by === case equality operator.
if (('a'..'z') === 'v')   
  puts "v lies in the above range"   
end   
  
if (('50'..'90') === 99)   
  puts "z lies in the above range"   
end  

# Ruby Reverse Range
    # puts (5..1).to_a   #Ruby reverse range operator does not return any value
     puts (1..5).to_a.reverse   