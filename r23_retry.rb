# for i in 1..5
#   begin
#     puts "i = #{i}"

#     raise if i >= 3
#   rescue
    #using retry statement 
    #retry_again variable is used to run
    #the retry statement 4 times
    #without this condition program will
    #keep on printing i = 3
#     retry if (retry_again += 1) < 5
#   end
# end
begin
i=0
while i<1
    puts "enter the first number: "
  num1=gets.chomp.to_i
  puts "enter he second number:"
  num2=gets.chomp.to_i
  div=num1/num2
  puts "division is :#{div}"
  i+=1
end 
  rescue Exception => e
    puts e.message
    retry

  end 