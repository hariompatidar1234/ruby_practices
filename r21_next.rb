


# Jumps to the next iteration of the most internal loop.
#  Terminates execution of a block if called within a block 
# (with yield or call returning nil).
for i in 0..5
    if( i==2)
        next
    end
    puts i
end