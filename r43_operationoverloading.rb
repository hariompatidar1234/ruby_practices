class Car
    attr_accessor:name,:color

    def initialize(name,color)
        @name=name
        @color=color
    end 
    def +(obj)
        return Car.new("#{self.name}#{obj.name}","#{self.color}#{obj.color}")
    end 
end 
a=Car.new("Mercedes","red")
b=Car.new("audi","silver")
puts (a+b).inspect


# Output :

#<Car:0x000000020a0620
#  @name="MercedesAudi", 
#  @color="RedSilver">


# Ruby program of Operator Overloading
class Car
    attr_accessor:name, :color
 
    # Initialize the name and color
    def initialize(name, color)
        @name = name
        @color = color
    end
    def /(obj)
        return Car.new("#{self.name}#{obj.name}",
                     "#{self.color}#{obj.color}")
    end
end
a = Car.new("Mercedes", "Red")
b = Car.new("Audi", "Silver")
puts (a/b).inspect


# Ruby program of Operator Overloading
class Comparable_operator
    include Comparable
    attr_accessor:name
 
    # Initialize the name
    def initialize(name)
        @name=name
    end
    def <=>(obj)
        return self.name<=>obj.name
    end
end
a = Comparable_operator.new("Geeks for Geeks")
b = Comparable_operator.new("Operator Overloading")
puts a<=>b #false 

# Ruby program of Operator Overloading
# By an Integer
class Tester
    attr_accessor:num
 
    # Initialize the num
    def initialize(num)
        @num = num
    end
 
    #yadi obj1 tester hua to if condition chalegi or obj1 num hua to false chakegu 
    def +(obj1)
        if obj1.class==Tester
        return self.num+obj1.num  #jab ek obj or dusra b obj
        else
            return self.num+obj1 #isme ek obj or ek integer
        end
    end

    # (Note: Operator Overloading is not a commutative operation,
    #  i.e., if we have used 3 + a in instead of a + 3 we would have got 
    #  an error like this: source_file.rb:17:in `+’: 
    #  Tester can’t be coerced into Fixnum (TypeError)
    #   from source_file.rb:17:in `’)
    # def *(obj)
    #     return self.num*obj.num
    # end
    # def **(obj)
    #     return self.num**obj.num
    # end
   
end
a=Tester.new(5)
b=Tester.new(10)

# yaha se + method call hoga 
puts a+b
# puts a*b
# puts a**b
puts a + 3
# puts a * 3
# puts a ** 3

#agr ham first  integer pass kr rhe h or ek obj pass kr rhe hai to error aayegi qki ham integer or obj ko sath m pass nahi kr skte or integer se method ko kese calll karenge (puts (4+b))


#ham ek obj or ek interger le skte hai but uske liye hame check condition lagaana hoga lo first interger hai ya as a obj (puts (b+3))

# ham dono obj pass k skte hai bu hame self keyword use krna hoga (puts (a+b))

# por ham dono integer b nai de skte puts (2+3)




# Ruby program of Operator Overloading
class Array_Operators
    attr_accessor:arr
 
    # Initialize the array
    def initialize(*arr)
        @arr = arr
    end
    def [](x)
        @arr[x]
    end
    def []=(x, value)
        @arr[x] = value
    end
    def <<(x)
        @arr << x
        return ("#{@arr}")
    end
end
a = Array_Operators.new(0, 3, 9, 27, 81)
puts a[4]
a[5] = 51
puts a[5]
puts a << 41
puts a[6]


class Box
    attr_accessor:width,:height
   def initialize(w,h)     # Initialize the width and height
      @width,@height = w, h
   end

   def +(other)       # Define + to do vector addition
      Box.new(@width + other.width, @height + other.height)
      return @width + other.width, @height + other.height # obj ka efrence pass hoga 
   end

   def -@           # Define unary minus to negate width and height
      Box.new(-@width, -@height)
   end

   def *(scalar)           # To perform scalar multiplication
      Box.new(@width*scalar, @height*scalar)
   end
end
a=Box.new(10,20)
b=Box.new(20,30)
puts a+b