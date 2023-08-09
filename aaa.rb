>> $/ = "NEXT"
=> "NEXT"
>> STDIN.each {|line| p line}
First line
NEXT
"First line\nNEXT"
Next line
where "line" really means
until we see... NEXT
"\nNext line\nwhere \"line\" really means\nuntil we see... NEXT"