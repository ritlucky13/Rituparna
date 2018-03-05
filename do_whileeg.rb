loop do
puts (a=12)
puts (b=3)
  answer = gets.chomp
  if answer != a*b   
    puts "hurry"
    break   
  end   
end