class Inst
   
        def initialize(id,name,age)
            @name=name 
            @age=age
            @id=id
        end
        def display
            puts "ID is #@id"
            puts "name is #@name"
            puts "age is #@age"
        end
          
end
I=Inst.new("1","hariom","19")
I.display