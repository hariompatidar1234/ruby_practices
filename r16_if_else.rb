=begin puts "enter the age"
number=gets.chomp.to_i
if number > 18
    puts "aligibal for voting "
elsif number=18
    puts "start  aligibal for voting "    
else
    puts "not aligibl for voting "

x=1
if x>2
    puts "x is the greter"
    elsif x<=2 and x!=0
        puts "x is one "
    else 
        puts "i cant guess the number"
    end



#Ruby if modifier
a=10
puts "hariom" if a==10
=end


#Ruby unless Statement
#Executes code if conditional is false. If the conditional is true, code specified in the else clause is executed.
x=1
unless x>=2
   puts "x is less then 2"
else 
    puts "x is greter than 2"
end
