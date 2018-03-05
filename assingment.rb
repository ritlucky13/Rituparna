dictionary = { "Kolkata" => 700105,
           "Alipur" => 700027,
           "Allagada" => 518543,
           "Along" => 791001,
           "Gaya" => 823003,
           "Patna" => 800001,
           "Ranchi" => 834001,
           "Dhanbad" => 826001,
           "Bhagalpur" => 812002,
           "Shillong" => 793001,
         }
         
         def city_name(available)
         available.each {|k,v| puts k}
         end
         
         def area_code(hash,key)
         hash[key]
         end
         
    loop do
        puts "Do you want to look for area code?(Y/N)"
        answer = gets.chomp.downcase
        if answer != "y"
        puts "Good Bye,Restart Program [hint: if wanna proceed press y]"
        
    break
    end
        puts "which city code you want?"
        city_name(dictionary)
        puts "Enter the selection"
        city = gets.chomp.Capitalize

        if dictionary.include?(city)
        puts "The area code of #{city} is #{area_code(dictionary,city)}"
    else
        puts "City name not available in Dictionary"
    end
    puts "Do You wanna Exit the Dictionary?(Y/N)"
    z = gets.chomp.downcase
    if z == "y"
        puts "Good Bye Sir"
        break
    end    
end