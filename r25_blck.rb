=begin


    A block consists of chunks of code.
    You assign a name to a block.
    The code in the block is always enclosed within braces ({}).
    A block is always invoked from a function with the same name as that of the block. This means that if you have a block with the name test, then you use the function test to invoke this block.
    You invoke a block by using the yield statement.
    
=end


def test 
    puts "yo are the method "
    yield 
    puts "123"
    yield
end
test{
    puts "you are the block"
}




    def two
        for i in 0..9
            if(i==5)
            yield i 
            end
        end 
    end 
    two{
        
        |j| puts j*10
    }

# Blocks can be “explicit” or “implicit”.

# Explicit means that you give it a name in your parameter list.
    def explicit_block(&block)
  block.call # same as yield
end

explicit_block { puts "Explicit block called" }



def p(&block)
    puts"khkj"
    block.call
end 
p{
    puts "explicit call"
}


BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}
   # MAIN block code 