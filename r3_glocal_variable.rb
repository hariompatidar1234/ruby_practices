$global_variable=100
class Math12
    def print_global
        puts "the global is #{$global_variable}"
    end
end
# $global_variable=10
# agr yaha npar dusra baayenge to cahnge hoga or value 10 ho jaywgi 
# age change krnahi to call m bich m change karenge

class Math1
    def print_global
         puts "the global is #{$global_variable}"
    end
end
m=Math12.new
M1=Math1.new
m.print_global
$global_variable=10
M1.print_global