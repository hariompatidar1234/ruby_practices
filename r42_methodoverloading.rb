=begin  
class Test
    def self.sum(a,b)
        puts a+b
    end
    def self.sum(a,b,c)
        puts a+b+c
    end
end
# Test.sum(1,3)

# main.rb:13:in `sum': wrong number of arguments (2 for 3) (ArgumentError)                                                      
        # from main.rb:18:in `


        class Test
    def self.sum(a,b)
        puts(a+b)
    end
    def self.sum(a,b,c)
        puts(a+b+c)
    end
      
end
# Test.sum(1,2,7)
# The second method overwrites the previous method and hence it works absolutely fine when we call the method with three arguments.

class Test
    def self.display(*args)
        case args.size
        when 1
            puts "1:hello #{args[0]} "
        when 2
            puts "1:hello #{args[0]} #{args[1]}"
        when 3
            puts "1:hello #{args[0]}  #{args[1]} Welcome to #{args[2]} language."
        end 
    end
end
puts "overloading using class mehtod "
# Test.display"greeks!!"
# Test.display"greeks!!","Hope you are doing great"
# Test.display"greeks!!","Hope you are doing great","see you soon"
=end 


class Test
    def display(*args)
        case args.size
            when 1
                puts "1: Hello #{args[0]}"
            when 2
                puts "2: Hello #{args[0]} #{args[1]}"
            when 3
                puts "3: Hello #{args[0]} #{args[1]} Welcome to #{args[2]} language."
        end
    end
end 
  
ob1 = Test.new
ob2 = Test.new
ob3 = Test.new
puts "Overloading using Instance Method"
  
ob1.display"Geeks!!" 
ob2.display"Geeks!!", "Hope you doing great."
ob3.display"Geeks!!", "Hope you doing great.", "Ruby"




def sum(*args)
	
	case args.size
		when 2
			if args[0].is_a?(Integer) && args[1].is_a?(Integer)
				puts "Int addition: #{args[0].to_i + args[1].to_i}"
		
			elsif args[0].is_a?(Integer) && args[1].is_a?(Float)
				puts "Int and Float addition: #{args[0].to_i + args[1].to_f}"
			elsif args[0].is_a?(Float) && args[1].is_a?(Integer)
				puts "Float and Int addition: #{args[0].to_f + args[1].to_i}"
			end
			
		when 3
			if args[0].is_a?(Integer) && args[1].is_a?(Integer) && args[2].is_a?(Integer)
				puts "Int addition: #{args[0].to_i + args[1].to_i + args[2].to_i}"
		
			elsif args[0].is_a?(Integer) && args[1].is_a?(Float) && args[2].is_a?(Integer)
				puts "Int, Float and Int addition: #{args[0].to_i + args[1].to_f + args[2].to_i}"
			elsif args[0].is_a?(Float) && args[1].is_a?(Integer) && args[2].is_a?(Float)
				puts "Float, Int, Float addition: #{args[0].to_f + args[1].to_i + args[2].to_f}"
			end
			
	end
end

sum 5, 7
sum 2.0, 6
sum 4, 5.2
sum 2, 3, 5
sum 4.5, 5, 3.5
sum 1, 2.5, 3
