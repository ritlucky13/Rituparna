class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display()
      puts "Customer id is #@cust_id" 
      puts "Customer name is #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customer()
      @@no_of_customers += 1
      puts "display the total number of  customers #@@no_of_customers"
   end
end
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
 
 cust1.display()
 cust2.display()
 
 cust1.total_no_of_customer()
 cust2.total_no_of_customer()
