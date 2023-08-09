
# you can define a simple method as follows −
def add
  puts 4+5
end

def add(n,m)
    return n+m
end

# add
# puts add(2,3)


# multipal valur return method
# def sum(num1,num2)
#     return num1+num2,num1>num2,num1<num2
# end
# sum,greater,smaller=sum(4,5)
# puts sum,greater,smaller


# Variable Number of Parameters
def hy(*a)
    s = 0
    for i in 0...a.length
        s  += a[i]
    end
    return s
end
# undef hy   means jo method h usko undefine kr dega uske bad me agr method ko call krenge to error dega 
puts hy 1,2,3,5


# Class Methods

class Accounts 
    # u want to access a method of a class, you first need to instantiate the class. 
    # you a way to access a method without instantiating a class.
    def reading_charge
    end 
    # static mathod 
    def Accounts.print
    end
end

 
# To access this method, you need not create objects of the class Accounts.
puts Accounts.print

class Y
    def t
        name="hariom"
        puts name
    end
    alias z t
end 
p=Y.new
p.z



# Ruby alias Statement
# This gives alias to methods or global variables
# #  Aliases cannot be defined within the method body
# alias method-name method-name
# alias global-variable-name global-variable-name
class User
    def fullname
        puts "jai shree ram "
    end 
    alias username fullname
    alias name   username

#    other define alias 
    # alias_method  :name ,  :username
end 
obj=User.new
obj.fullname
obj.username
obj.name
