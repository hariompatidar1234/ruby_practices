$name_of_god="jai shree ram "
class   ParentClass
  @@id=0 # class variables
  def initialize(id,name,age)
    @name=name  #instance variables
   @age=age  
   
   puts name
     puts age
     puts id
  end
  def running
    puts "runnig is very fast"
    name1 ="ramram" #local_variables
    puts name1
  end
end
p=ParentClass.new("1","hariom","18")
puts $name_of_god
p.runnig