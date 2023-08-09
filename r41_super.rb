class Vehicle
  def initialize
    @speed = 500
 
    @forth= ""
    @last=""
  end 

  def accelerate(speed)
    @speed += speed
  end
  def gear(first,second)
    @forth =first
    @last = second
  end 

end

class Car < Vehicle
  def accelerate(speed)
    super(speed) # calls the accelerate method in the parent class
    puts "The car is now moving at #{@speed} mph."
  end
  def gear(first,second)
    super(first,second)
    puts "THE bus driver and conductor :#{@forth} and #{@last}"
  end 
end

car = Car.new
car.accelerate(50)
car.gear("ram","shyam")
