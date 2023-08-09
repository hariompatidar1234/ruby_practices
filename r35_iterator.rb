=begin
Each Iterator
Each iterator is one of the most used types of iterators in ruby.
 Each iterator returns all the elements from an array or the hash.
 This iterator returns each value one by one.
=end

  (1..5).each do |i|
    puts i*i
end 


#time iterator 
# In this iterator, a loop will execute a specified number of times.
#  It starts from zero and goes to one less than the specified number.
5.times do | i |
puts i
end

# Collect Iterator
# Collect iterator returns all the elements of the collection. It returns an entire collection.
j=[3,4,5,5,6]
b=j.collect{|i| (2*i)}
puts b

puts ""
# Step Iterator
# Step iterator is used to skip over a specific range of iterations.
# Syntax
# (controller).step(range) do |variable_name|
#body (code)


(10..50).step(5) do | i |
puts i
end


# Each_Line Iterator

# Each_line iterator is used to iterate over a new line in a given string.
"hfiuhfk\njBHGBNF\nVKJA\nBBS\nGBVLJGIJ\nNBGHJGV,".each_line do |i|
    puts i
end 

# Upto Iterator
# Upto iterator follows the top to bottom approach. The iterator starts from the top and ends at the bottom. 
5.upto(10) do | i |
puts i
end
"a".upto("z") do | i |
puts i
end


# Downto Iterator

# Downto iterator is the opposite of Upto iterator. It follows the bottom-to-top approach. The iterator starts from the bottom and ends on the top
10.downto(5) do | i |
puts i
end


