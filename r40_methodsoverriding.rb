class Box
    def initialize(w,h)
    @width,@height= w,h

    end 
def getArea
    @width*@height
end 
end 
class BigBox <Box
    def getArea
        @area=@width*@height
        puts "bog box area is #@area"
    end 
end 
box=BigBox.new(10,20)
box.getArea
puts box.getArea