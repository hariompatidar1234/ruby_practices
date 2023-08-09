# A lambda is a way to define a block & its parameters with some special syntax.

# You can save this lambda into a variable for 
say_something = -> { puts "This is a lambda" }

# You can also use the alternative syntax: lambda instead of ->.later use.
school = -> {return "my name is hariom"}
puts school.call
puts "sachin is my friend "


def lambda_test
   lam = lambda { return }  #yaha return milne pr lambda function ko break krega or next line par jayega 
   lam.call
   puts "Hello world."
end
lambda_test      # When lambda_test is called, it prints 'Hello World.'


def proc_test
    proc = Proc.new { return } # agr proc function me ahme return mila to vo function ko break kr dega or vo bs return k case m hoga  outs k case m next line m chla jayga 
    proc.call
    puts "Hello world."
end
proc_test                 # calling proc_test prints nothing


def test_return
  -> { return 3 }.call      # just returns from lambda into method body
  proc { return 4 }.call    # returns from method
  return 5
end
puts  puts test_return # => 4, return from proc

p = proc {|x, y| "x=#{x}, y=#{y}" }
puts p.call(1, 2)      #=> "x=1, y=2"
puts p.call([1, 2])    #=> "x=1, y=2", array deconstructed
puts p.call(1, 2, 8)   #=> "x=1, y=2", extra argument discarded
puts p.call(1)         #=> "x=1, y=", nil substituted instead of error


l = lambda {|x, y| "x=#{x}, y=#{y}" }
puts l.call(1, 2)      #=> "x=1, y=2"
# puts l.call([1, 2])    # ArgumentError: wrong number of arguments (given 1, expected 2)
# puts l.call(1, 2, 8)   # ArgumentError: wrong number of arguments (given 3, expected 2)
# puts l.call(1)  
# lambda1 = lambda {|x| x**2 }



def test
  [[6, 8], [3, 4], [5, 6]].map {|a, b| return a if a + b > 10 }
                           
end

# puts test

puts"hello"
p = proc {|x, y| x }
l = lambda {|x, y| x }
puts [[1, 2], [3, 4]].map(&p) #=> [1, 3]
puts [[7, 8],[4, 6]].map(&p) #=> [4, 7]
puts [[4, 6], [7, 8]].map(&p) #=> [4, 7]
# puts [[1, 2], [3, 4]].map(&l) # ArgumentError: 
# wrong number of arguments (given 1, expected 2)



# Any object that implements the to_proc method can be
#  converted into a proc by the & operator, and therefore
#  con be consumed by iterators.

class Greater
  def initialize(greating)
    @greating = greating
  end

  def to_proc
    proc {|name| "#{@greating}, #{name}!" }
  end
end

hi = Greater.new("Hi")
hey = Greater.new("Hey")
puts ["Bob", "Jane"].map(&hi)    #=> ["Hi, Bob!", "Hi, Jane!"]
puts ["Bob", "Jane"].map(&hey)   #=> ["Hey, Bob!", "Hey, Jane!"]




# Public Class Methods
# new {|...| block } → a_proc
# new → a_proc 
def proc_from
  Proc.new
end
proc = proc_from { "hello" } #jab ham kisi proc ka block nahi dete h o uska block bad m b e skte h 
proc.call   #=> "hello"


#composition ham proc to proc & proc to lambda & lambda to proc &lambda to lambda 
f = proc {|x| x * x }
g = proc {|x| x + x }
p (f << g).call(2) #=> 16  (f << g=fog=(x+x)*(x+x))

f = lambda {|x| x * x }
g = proc {|x| x + x }
p (f >> g).call(2) #=> 8


f = proc {|x| x * x }
g = ->(x) { x + x }
p (f >> g).call(2) #=> 8 composition of proc to lambda

f = lambda {|x| x * x }
g = lambda  {|x| x + x }
p (f >> g).call(2) #=> 8

