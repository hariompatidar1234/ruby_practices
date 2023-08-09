month=Hash.new("month")
#agr month m month[0] koi value nahi hai to uski defalt value print hogi gr di h to or agr nahi di h to error ayegfi 
puts "#{month[0]}"
H=Hash["a" => 100,"b"=>200]
puts "#{H["a"]}"

a=Hash.new("ram")
puts a["x"]=40
#ptiny the defauly value if no found key 
puts a["b"]


week=Hash["1", 100,"2","monday"]
puts week["1"]
puts week ["2"]
puts week["monday"]

puts Hash.try_convert({3=>9})
puts Hash.try_convert("3=>9")

#compare the hashes
puts H==a
a3 = {"f" => 78, "x" => 67, "z" => 21}


    color = {   
        "Rose" => "red",   
        "Lily" => "purple",   
        "Marigold" => "yellow",   
        "Jasmine" => "white"   
      }   
      color['Tulip'] = "pink"   
      color.each do |key, value|   
      puts "#{key} color is #{value}"   
     end  

      # month=Hash.new("no foubnd") 
     month=Hash["1"=>"january ",
      "4"=>"april",
       "2"=> "fabuary ",
       "3"=>"march "
       
     ]
     #print th esort hash 
     puts month.sort
     #print the keys of the hesh
     puts month.keys
     #print the value of the hash
    puts month.values
    puts month['1']
    puts month["4"]
    # puts (month["5"])

    r=Hash["1"=> "fisrt day", "2"=> "seconnd day","3"=> "third day", "4"=> "forth day"]
  #  default="no found value "
    #print the Hash fuction
    puts r["10"]
    r.store("9","ram")
    puts r["9"]
    puts r["7"]="sevnth day"
    

  dictionary = {
  opportunity: [
    "a set of circumstances that makes it possible to do something",
    "a situation or condition favorable for attainment of a goal"
  ],
  creativity: [
    "the use of imagination or original ideas to create something new",
    "the ability to create",
    "the process where new ideas emerge from combining existing ideas in new ways"
  ]
}

puts dictionary[:creativity][1]


name={"33"=>["dev","hariom"],"34"=>["hariom","harshal"]}
puts name["33"][1] #key value 33 par jo first par h vo print karga 
puts name["33"][10] #defalut nil print krega 



h = { ice_cream: 1, chocolate: 2, beer: 3 }
h.store("cegate",4)
puts h["cegate"]
puts h.delete(:beer) #delete the value off beer
 puts h.key?(:ice_cream)
# true=if found 

puts h.key?(:tomato)
# false
puts h.length

# way of initialize

# { 1 => "eins", 2 => "zwei", 3 => "drei" }
# { :one => "eins", :two => "zwei", :three => "drei" }
# { "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] }
# { :de => { :one => "eins", :two => "zwei", :three => "drei" } }

# puts{ "one" => "eins" }.merge({ "two" => "zwei" })
#{ "one" => "eins", "two" => "zwei" }

cities = {
  england: 'london',
  france: 'paris',
  germany: 'berlin',
  belgium: 'brussels'
}

cities.each { |key, value| puts "#{value} is a city in #{key}" }
  