module A
    def a1
        return Time.now
    end
    # def a2
    #     return Date.now
    # end 
end

module B
    def b
        return 5+9
    end
    def b2 
        return "ram ."
        
    end
end 



class M
    # we can use also prepend and extend nd include 
    prepend A
    extend B
    # include B
 def ab1
    puts "call the module a"
 end 
 def ab2
    puts "call the module b"
 end 
end 

abc=M.new
# puts abc.ancestors
puts abc.a1
# puts abc.a2
puts abc.ab1
puts abc.b2
puts abc.b
puts abc.ab2