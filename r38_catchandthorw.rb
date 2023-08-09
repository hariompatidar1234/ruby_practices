# Catch and Throw
# def promptAndGet(prompt)
#    print prompt
#    res = readline.chomp
#    throw :quitRequested if res == "!"                                                         
#    return res
# end
# catch :quitRequested do
#    name = promptAndGet("Name: ")
#    age = promptAndGet("Age: ")
#    sex = promptAndGet("Sex: ")
#    # ..
#    # process information
# end
# promptAndGet("Name:")

# def getdata
#     puts "enter the name:"
#     name=gets
#     puts "enter the number:"
#     number =gets.chomp.to_i
#     throw :genratedata if number%2==0
#     return number 
# end 
# catch :genratedata do 
#     puts "code is done "
#     puts getdata
#     puts "ramlk"
# end 
# getdata
# 




# catch(:finish) do 
#   1000.times do #  w ww . ja  v  a 2s  . c  om
#     x = rand(1000) 
#     puts x
#     throw :finish if x == 123 
#   end 2

#   puts "Generated 1000 random numbers without generating 123!" 
# end



# def generate_random_number_except_123 
#   puts x = rand(1000) # from   w ww  .j  a  va  2 s .  c o m
#   throw :finish if x == 123 
# end 

# catch(:finish) do 
#   1000.times { generate_random_number_except_123 } 
#   puts "Generated 1000 random numbers without generating 123!" 
# end


# catch( :finished) {
#    print( 'Enter a number: ' )
#    num = gets().chomp.to_i# w ww . jav  a 2s  .c  om
#    begin
#       result = 100 / num
#    rescue Exception => e
#       throw :finished        # jump to end of block
#    end
#    puts( "The result of that calculation is #{result}" )
# }     # end of :finished catch block



# begin   
#    x = Dir.mkdir "alreadyExist"   
#    if x   
#       puts "Directory created"   
#    end   
# rescue   
#    y = "newDir"   
#    retry   
# end 


class FileSaveError < StandardError
   attr_reader :reason
   def initialize(reason)
      @reason = reason
   end
end


File.open("input.txt", "w") do |file|
begin
 raise FileSaveError.new("hellow ")
rescue Exception=>e
   # Something went wrong!
   puts e.reason
end
end