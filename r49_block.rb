# Ruby blocks are little anonymous functions that can be passed into methods.
# Blocks are enclosed in a do / end statement or between brackets {}, and they can have multiple arguments.

# The argument names are defined between two pipe | characters.

# If you have used each before, then you have used blocks!


# Form 1: recommended for single line blocks
[1, 2, 3].each { |num| puts num }
puts ""
["a", 2, "h"].each { |num1| puts num1}
puts ""
[1, 2, 3].each { |num2| puts num2}
                
# Form 2: recommended for multi-line blocks
[1, 2, 3].each do |num|
  puts num
end
def print_once
  yield 1,2,3
end

print_once { |i,j,k|    puts "Block is being run #{i*10},#{j*10},#{k*10}" }



def des
    puts "call the block "
    name="hariom"
    yield name 
end 
des{|name1| puts "your name is #{name1}"}



def do_something_with_block
  return "No block given" unless block_given?
  yield
end
do_something_with_block