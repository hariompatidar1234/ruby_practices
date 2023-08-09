class Book
    attr_accessor:num1,:num2
    def initialize(num1,num2)
        @num1=num1
        @num2=num2
    end 
    def addition
        @num1+@num2
    end 
    def info
        puts "book name is the power of the subconceous mind "
    end 
    def author
        puts "book author is the j.as marfi"
    end
end 
b=Book.new(10,20)
puts b.addition

if( b.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

b.num1=20
b.num2=30
puts b.addition
puts "number is #{b.num1},#{b.num2}"