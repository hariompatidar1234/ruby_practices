# puts "enter the name "
# name=gets
# puts name #print the name 
# putc name # first word the string 


=begin
a=File.new("dev.txt","w")
a.syswrite("hariom partidar ")
a.close()
File.open("dev.txt","r+") do |a|
    puts a.gets
end
=end 


# b=File.new("file.txt","w+")
# if b
#     # b.syswrite("sachin is the brillent men")
#     c=b.sysread(20)
#     puts c 
# else
#     puts "file not found "

# end 

# aFile = File.new("fileinputoutput.txt", "r+")
# if aFile
#    aFile.syswrite("ABCDEF")
#      aFile.each_byte {|ch| putc ch; putc ?. }

# else
#    puts "Unable to open file!"
# end

# array=IO.readlines("file.txt")
# puts array[0]
# IO.foreach("input.txt"){|block| puts block}


# File.rename("dev.txt","chintu.txt")
# File.delete("chintu.txt")

# aFile=File.new("newfilecreated.txt","r+")

#     # content=aFile.syswrite("input the data ")
#     # aFile.close()
#     # puts content

#     aFile=File.new("newfilecreated.txt","r")
#         aFile.chmod(0755)
#     con=aFile.read
#     puts con
 


# puts File.open("file.txt") if File::exists?("file.txt")

# puts File.file?( "file.txt" ) #yadi file hogi to true  
# puts File.file?( "text.txt" ) #yadi file nhi hogi to false  
    


class File
  U_R = 0400
  U_W = 0200
  U_X = 0100
  G_R = 0040
  G_W = 0020
  G_X = 0010
  O_R = 0004
  O_W = 0002
  O_X = 0001

  A_R = 0444
  A_W = 0222
  A_X = 0111
end
# fi=File.open("file.txt", "w") 
# fi.syswrite("my hero is my father ")
# File.chmod(File::U_R | File::U_W | File::G_R | File::O_R, "file.txt")
# File.chmod(File::A_R | File::U_W, "file.txt")
# File.chmod(0644, "file.txt")                   # Bitmap: 110001001
# File.chmod(File::O_R,"file.txt")
# new_permission=File.lstat("file.txt").mode |File:: A_R| File::A_W|File::A_X
# File.chmod(new_permission,"file.txt")
# puts IO.readlines("file.txt")

# puts File::readable?("file.txt") # check krns readebalwe h k nhi h


# This returns either true or false
puts File.file?( "text.txt" ) 

# a directory
 puts File::directory?( "/usr/local/bin" ) # => true

# a file
puts File::directory?( "file.rb" ) # => false

 
puts File.readable?( "test.txt" )   # => true
puts File.writable?( "test.txt" )   # => true
puts File.executable?( "test.txt" ) # => false

puts File.zero?( "test.txt" )      # => true

puts File.size?( "fileinputoutput.txt" )     # => 1002


puts File::ftype( "file.txt" )     # => file name of the file 

puts File::ctime( "file.txt" ) # => Fri May 09 10:06:37 -0700 2008
puts File::mtime( "file.txt" ) # => Fri May 09 10:44:44 -0700 2008
puts File::atime( "file.txt" ) # => Fri May 09 10:45:01 -0700 2008


require 'tmpdir'
   tempfilename = File.join(Dir.tmpdir, "tingtong")
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file"
   tempfile.close
   File.delete(tempfilename)

