=begin

(getter method )
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def printWidth
      @width
   end

   def printHeight
      @height
   end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.printWidth()
y = box.printHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"


setter method 
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"



both (getter and seter )


class Book
attr_reader :name,:author
attr_writer :name,:author
    def initialize(name,author )
        @name=name
        @author=author
    end 

    def details
        has={}
        instance_variables.each do |var|
            has[var.to_s]=instance_variable_get(var)
        end 
        has
    end 

    def what_am_i
        puts "calling the method"
    end
    
end
book=Book.new("wing of the fire ","APJ abdul kamal")
puts book.name
puts book.author
puts book.details
book.name="meluva"
book.author="mahesh tripathi"
puts book.name
puts book.author
puts book.details
book.what_am_i
# =end 



class Mat
attr_accessor :num1,:num2,:num3
def initialize(num1,num2,num3)
    @num1=num1
    @num2=num2
    @num3=num3
end 
def getAdd
    add=@num1+@num2+@num3
    add
end
def getSubstracrt
    sub=@num1-@num2-@num3
    sub
end
end 
m=Mat.new(5,8,9)
puts m.getAdd
puts m.getSubstracrt
m.num1=9
m.num2=6
m.num3=3
puts m.getAdd
puts m.getSubstracrt
=end


class Vahicale #hearaky inheritance 
    attr_accessor:vahical_name,:vahical_color,:car_name,:bus_name
    def initialize(vahical_name,vahical_color)
        @vahical_name=vahical_name
        @vahical_color=vahical_color
    end 
    def description
        puts "this is vahicale"
    end 
end 
class Car < Vahicale
    def initialize(vahical_name,vahical_color,car_name)
        super(vahical_name,vahical_color)
        @car_name=car_name
    end 
    def carDes
        puts "this is car "
    end 
end 
class Bus < Car
      def initialize(vahical_name,vahical_color,car_name,bus_name)
      super(vahical_name,vahical_color,car_name)
      @bus_name=bus_name
    end 
    def details
        puts "vahical_nam desame is:#{@vahical_name}"
        puts "vahicale color  is:#{@vahical_color}"
        puts "car  car name  is:#{@car_name}"
        puts "bus name is:#{@bus_name}"
    end 
end 



b=Bus.new("four vahilar","black","maruti suzuti","eicher")
b.description
b.carDes
b.details
b.vahical_name="alto 800"
b.vahical_color="white"
b.car_name="maruti suzuki"
b.bus_name="redbus"
b.details