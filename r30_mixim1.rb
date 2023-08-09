module Student 
    @id
    @name
    @collage
    def initialize(id,name,clg)
        @id=id
        @name=name
        @collage=clg
    end
    def getdata()
        variable=[]
        hases={}
        instance_variables.each do |var|
        variable.append(instance_variable_get(var))
        hases[var]=instance_variable_get(var)
        end 
       return variable, hases
       
    end 

end 


class Skitm
 include  Student
  def initialize(id,name,clg)
    super(id,name,clg)
  end 
end 


s1=Skitm.new(34,"hari","skitm")
puts(s1.getdata())