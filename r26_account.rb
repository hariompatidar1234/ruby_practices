=begin
A module is a collection of methods, variables and constants stored in a container.

It’s similar to a class but it cannot be instantiated.
Modules are a way of grouping together methods, classes, and constants. Modules give you two major benefits.
Modules have 2 main purposes:

    providing a namespace and prevent name clashes
    using the mixin facility for composition

    Modules provide a namespace and prevent name clashes.

    Modules implement the mixin facility.
Module constants are named just like class constants,
 with an initial uppercase letter. The method definitions look 
imilar, too: Module methods are defined just like class methods.
As with class methods, you call a module method by preceding
 its name with the module's name and a period, 
 and you reference a constant using the module name and two colons.
=end
module Arithmetic

    def Arithmetic.add(*numbers)
        sum=0
        for i in numbers do
            sum += i
        end
        sum
    end 
    
    def Arithmetic.sub(*values)
        sum=0
        for i in values
            sum += i
        end
        sum
    end
    def  Arithmetic.mod(num1=100,num2=34)
        num1%num2
    end
    def Arithmetic.div(num1=20,num2=4)
        num1/num2
    end
end 