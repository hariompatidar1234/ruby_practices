# Ruby redo Statement
# Restarts this iteration of the most internal loop, without checking 
# loop condition. Restarts yield or call if called within a block.
# for i in 0..5
#    if i < 2 then
#       puts "Value of local variable is #{i}"
#       redo
#    end
# end
puts ""
puts ""
puts ""
for i in 5..10
    if i==7
        next
    end
    if i==9
        break
    end 
      puts  i
    if(i==6)
        redo
        # infinte loop
    end

    puts  i
end 



[1,2,3].each do |n|
  puts "Step #{n}"
    
  n += 1 and redo if n < 2
end


restart =true
for i in 1..10
    if i==5 and restart==true
        puts "reapeting loop when i=#{i}"
        restart=false
        redo 
    end 
    puts i
end 