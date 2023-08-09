class Student
    ACCNT_NO=45630073839
    BANKNAME="BOI"
    def details
        puts "bank is the god intrest "
    end 
end 
s=Student.new
s.details
puts Student::ACCNT_NO
puts Student::BANKNAME

# define a class
class Box
   BOX_COMPANY = "TATA Inc"
   BOXWEIGHT = 10
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"