#Ruby while Statement
i=2
n=12
while i<=n
    puts i+1
    i+=2
end 



# Ruby while modifier
# if condition is false loop run is sigle time 
 i=7
begin
    puts i
i+=1
end while i<6



# Ruby until Statement
i=1
n=9
until i>n do 
    puts "i is #{i}"
    i+=2
end

puts "\n\n\n"

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num


puts "\n\n"
#Ruby for Statement
n=10
for i in 0..n
    puts  n+=2
   
end

puts ""
(0...6).each do |i|
    puts i
end

