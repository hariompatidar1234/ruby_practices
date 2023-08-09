def table
    i=1
        # puts Thread.current.priority #(3)

    while i<=10
        puts " 2 * #{i} = #{2*i}"
        sleep(1)
        i+=1
    end
end 
def table1
        # puts Thread.current.priority #(-3)
    i=1

    while i<=10
        puts " 21 * #{i} = #{21*i}"
        sleep(2)
         i+=1
end
end 
def table3
    i=1
        # puts Thread.current.priority #(0)

    while i<=10
        puts " 1 * #{i} = #{1*i}"
        sleep(3)
         i+=1
    end 
end
# t1=Thread.new{(table)}
# t2=Thread.new{(table1)}
# t3=Thread.new{(table3)}
# t1.priority = 3 #firsst run beacause higher priority 
# t2.priority = -3


# t1.join()
# t2.join()
# t3.join()
#  Very important threads can be assigned a higher priority, 

count = 0
arr = []

10.times do |i|
   arr[i] = Thread.new {
      sleep(2)
      Thread.current["mycount"] = count
      count += 1
   }
end

arr.each {|t| t.join; print t["mycount"], ", " }
# puts "count = #{count}"