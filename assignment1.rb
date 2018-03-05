Code = {Kolkata:  '33', Delhi:  '011', Noida:  '56', Bangalore: '9' }
def City_name(available)
available.each do |key, value|   
  puts "#{key}"   
end
def City_code(hash,key)
    hash[key]
end
