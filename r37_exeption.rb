    def raise_and_rescue     
      begin     
        puts 'Before the raise.'     
        raise 'An error occured.'   # manuaally error genarate hogi age error nahi h to b ham error la skte hai jo ki 
        #                                rescue me handdle hog     
        puts 'After the raise.'     
      rescue     
        puts 'Code rescued.'     
      end     
      puts 'After the begin block.'     
    end     
    # raise_and_rescue    
    
    def exeaption_handling
      begin
        a=9
        c=9/0
        # d=[1,2,3]
        # puts d["3"]
        puts c
      rescue => exception
        puts (exception.message)
        
      end
      
    end 
    #  exeaption_handling
    
    
    #  begin
    
    #   raise "a test exeption "
    #  rescue Exception =>e
    #   puts e.message
    #   puts e.backtrace.inspect
    #  end
    
    begin
      raise "a test exception"
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    ensure 
      puts "ensuring executing "
    end
    
    
    begin
      # raise "a test exception"
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    else 
      puts "congrastultion no error "
    ensure 
      puts "ensuring executing "
    end
    
    