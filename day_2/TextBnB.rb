class Home
  attr_reader :name, :city, :price, :capacity
  def initialize (name, city, price, capacity)
    @name = name
    @city = city
    @price = price
    @capacity = capacity
  end
end

class List_of_Houses

  def initialize(array)
    @array = array
    self.listening_to_user
  end

  def list_homes
    puts "List of the available houses"
    puts "***********************************"
    ordered_array = @array
    ordered_array.each {|house| puts "#{house.name} available in #{house.city} for #{house.price}€/#{house.capacity} personas"}
    self.average_homes(ordered_array)
  end 

  def sort_homes
    puts "Available houses sorted by price"
    puts "***********************************"
    ordered_array = @array.sort{|house1,house2| house1.price <=> house2.price}
    ordered_array.each {|house| puts "#{house.name} available in #{house.city} for #{house.price}€/#{house.capacity} personas"}
    self.average_homes(ordered_array)
  end

  def filter_homes_by(ncity)
    puts "List of the available houses in #{ncity}"
    puts "***********************************"
    ordered_array = @array.select {|house| house.city == ncity}
    ordered_array.each {|house| puts "#{house.name} available in #{house.city} for #{house.price}€/#{house.capacity} personas"}
    self.average_homes(ordered_array)
  end

  def find_home(nprice)
    puts "List of the available houses at #{nprice}€"
    puts "***********************************"
    ordered_array = @array.select {|house| house.price == nprice}
    ordered_array.each {|house| puts "#{house.name} available in #{house.city} for #{house.price}€/#{house.capacity} personas"}
    self.average_homes(ordered_array)
  end

  def listening_to_user
    input_user = ""
    while input_user != "exit"

      puts "***********************************"
      puts "tell me what do you want me to do if you need help type help"
      puts "Press 1 for the listing"
      puts "Press 2 for listing sort by price"
      puts "Press 3 for"
      puts "Press 4 for"

      input_user = gets.chomp
      
          if input_user == "1"
              self.list_homes

          elsif input_user == "2"
            puts ""

                
          

 #              puts "I am a MOTHERFUCKER!!!!" 

 #          elsif input_user.include? "price"
 #              self.sort_homes

           elsif ["Madrid","Barcelona","Sevilla","Bilbao"].include?(input_user)
               puts "I am a MOTHERFUCKER!!!!" 

 #          elsif input_user.include? "help"
 
 #              puts "Please Kill Me!!!!!!!!!!!!!!!!!!!!"  
 #              puts "You need Help!!!!!!!" 
 #              puts "*********************************" 
 #              print "\n
 #                    ,.ood888888888888boo.,
 #               .od888P^                ^Y888bo.
 #           .od8P     ..oood88888888booo.      Y8bo.
 #        .odP    .ood8888888888888888888888boo.    Ybo.
 #      .d8    od8 d888888888f 8888 t888888888b 8bo    Yb.
 #     d8   od8^   8888888888[      ]8888888888   ^8bo   8b
 #   .8P  d88      8888888888P      Y8888888888      88b  Y8.
 #  d8  .d8         Y88888888        88888888P         8b.  8b
 # .8P .88P                                            Y88. Y8.
 # 88  888                                              888  88
 # 88  888                                              888  88
 # 88  888.        ..                        ..        .888  88
 #  8b  88b,     d8888b.od8bo.      .od8bo.d8888b     ,d88  d8 
 #  Y8.  Y88.    8888888888888b    d8888888888888    .88P  .8P
 #    8b  Y88b.   88888888888888  88888888888888   .d88P  d8 
 #     Y8.  ^Y88bod8888888888888..8888888888888bod88P^  .8P
 #       Y8.   ^Y888888888888888LS888888888888888P^   .8P 
 #         ^Yb.,   ^^Y8888888888888888888888P^^   ,.dP^ 
 #            ^Y8b..     ^^^Y88888888P^^^     ..d8P^ 
 #                ^Y888bo.,            ,.od888P^
 #                      ^^Y888888888888P^^       
 #  \n"

 #              puts "*********************************" 
 #              puts "This is the user manual of TextBnB"
 #              puts "*********************************"
 #              puts "If you want to know the whole list ask me about our listing" 
 #              puts "we can sort by price ask me" 

          end
      end
  end

protected

  def average_homes(ordered_array)
    total_sum = ordered_array.reduce(0) do |sum,house| 
      sum + house.price 
    end
    average = total_sum / ordered_array.length
    puts "the average price of the houses your are looking at is #{average}"
  end
end

house1 = Home.new("house1", "Madrid", 56, 1)
house2 = Home.new("house2", "Sevilla", 26, 2)
house3 = Home.new("house3", "Barcelona", 34, 2)
house4 = Home.new("house4", "Madrid", 55, 1)
house5 = Home.new("house5", "Bilbao", 134, 3)
house6 = Home.new("house6", "Madrid", 58, 1)
house7 = Home.new("house7", "Barcelona", 13, 1)
house8 = Home.new("house8", "Madrid", 34, 2)
house9 = Home.new("house9", "Bilbao", 78, 3)
house10 = Home.new("house10", "Barcelona", 87, 5)

array_houses = [house1,house2,house3,house4,house5,house6,house7,house8,house9,house10]

textBnB = List_of_Houses.new(array_houses)
