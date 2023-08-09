class Developer
    def self.backend #(class method )
         puts "i am backend developer"
       
    end
    def frontend #(instance method )
        puts "i am frontend "
     
    end 
end
p Developer .class
p Class .superclass
p Module.superclass
# p object.superclass
Developer.new.frontend #(class object or instance object)
Developer.backend #(class method called by class name )
