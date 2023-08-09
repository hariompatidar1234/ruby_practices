# define a class
# class Box
#    # constructor method
#    def initialize(w,h)
#       @width, @height = w, h
#    end

#    # instance method by default it is public
#    def getArea
#       getWidth() * getHeight
#    end

#    # define private accessor methods
#    def getWidth
#       @width
#    end
#    def getHeight
#       @height
#    end
#    # make them private
#    private :getWidth, :getHeight

#    # instance method to print area
#    def printArea
#       @area = getWidth() * getHeight
#       puts "Big box area is : #@area"
#    end
#    # make it protected
#    protected :printArea
# end

# # create an object
# box = Box.new(10, 20)

# # call instance methods
# a = box.getArea()
# puts "Area of the box is : #{a}"

# # try to call protected or methods
# box.printArea()

# class Math 
#    def area 
#       ans= 2+9
#       puts ans 
#    end 
#    def ract_area
#       puts "ram "
#    end 
#    def make
#       puts "shita"
#    end 
#    private :area
#    protected :ract_area
# end 
# class phym < Math

# end 
class Person 
  def speak
    puts "Hey, Tj!"
  end  
  def whisper_louder
    whisper
  end 
  private  
  def whisper
    puts "His name's not really 'Tj'."
  end 
  
  protected
  def greet
   puts "Hey, wassup!"
  end
end
class Me < Person
  # def be_nice
  #   Person.greet 
  #   Person.whisper
  # end
  p=Person.new
  # p.greet
  # self.greet
  # p.whisper
  self.whisper
end 
# tj = Me.new
# tj.be_nice # "Hey, wassup!"
