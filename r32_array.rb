# Ruby arrays are ordered, integer-indexed collections of any object. 
name =Array.new(12)

#print thr size of the array
puts name.size
puts name.length 

#6 print 3 times
nam=Array.new(3,"6")
puts nam

#start th e=0 araray indexing 
nums=Array.new(6){ |e| e  = e*2}
puts "#{nums}"

nums= Array.[](1,2,3,4,5)
puts "#{nums}"

#print the 0 to 9 
digits =Array(11..20)
puts "#{digits}"

#print at the specific position 
#7 bis the position
 puts digits.at(7)

 #intersection of the two array
a=[1,2,3,4,5,6]
b=[2,3,4,5,6,7,8]
 puts "#{a & b}" #intersectiom [2,3,4,5,6]
 puts "#{a-b}" #1
 puts "#{b-a}" #7,8
 puts "#{b+a}" #dono add 
 puts "#{b|a}" #b k sab 
puts ""
 puts "#{a*2}" #2 tme print 


 puts a<=>b #beacuse b is greater print -1
 puts b<=>a  #because b is greater so print 1
 puts a==b  #3 return a boolean value v
  puts a.assoc(b)
  puts "u"
  puts b.delete_at(5)

  puts ""
  puts ""
  #take means continue 4 element 
  puts a.take(4)
  puts ""
  #The .drop method returns the elements after n elements of the array:
  puts a.drop(3)
  puts ""
  #The .pop method will permantently remove the last element of an array:

  puts a.pop
  #The .shift method will permantently remove the first element of an array and return this element:
puts a.shift
#The .unshift method will allow you to add an element to the beginning of an array:
puts a.unshift(1)

puts a.push(99)
puts "#{a}"
puts "#{a.reverse}"
puts "#{b}"

#5 se badi elemet print kreng 
puts b.select{  |number| number >5}

#The include? method checks to see if the argument given is included in the array:
puts a.include?(99)

#The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array:
array = [1, 2, [3, 4, 5], [6, 7]]
puts "#{array.flatten}"

#join the element with the *
puts array.join("*")

a.each do |element|
    print(element , " ")
end


puts a.map { |element| element * 2 }



b=[1,1,1,1,1,2,2,3,3,4,4,2,2,4,5,6]
c=b.uniq
puts "#{c}"


puts "#{c.concat(a,b)}"