# def coffee
#   puts self # object ka refrence pass karega 
#             #  jese self ek object ka kam karega 
# end

# coffee
# # main
    # self is constantly changing as a program executes.
    # Only one object can be self at a given time.
    # When you call a method, the receiver becomes self.
    # All instance variables are instance variables of self, and all methods without an explicit receiver are called on self.
    # As soon as you call a method on another object, that other object (receiver) becomes self.

class Animal
    def cat 
        puts "meow"
        self.dog
    end
    def dog 
        puts "bhowbhow"
        self.monkey
    end 
    def monkey
        puts "monkey is climbing"
    end 
end 
Animal.new.cat




