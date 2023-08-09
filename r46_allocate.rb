#you want to create an object without calling its constructor initialize 
# i.e. using new method,
#  in such case you can call allocate,
# define a class
class Box
   attr_accessor :width, :height

   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method
   def getArea
      @width * @height
   end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate # dumy banane k liye use krte hai 
# box2.width=30 agr ye de denge to error nahi ayegi 
# box2.height=40  error nai ayegi 

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

# call instance method using box2
a = box2.getArea()
puts "Area of the box is : #{a}"