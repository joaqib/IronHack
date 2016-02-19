hash1 = {:wat => ["","", { :wut => ["", [["","","","","","","","","",{:bbq => "Ole!!!"}]]]}]}
puts hash1[:wat][2][:wut][1][0][9][:bbq]
arr1 = [["","","","","",{:secret => {:unlock => ["","Ole!!!!!!!!"]}}]]
puts arr1[0][5][:secret][:unlock][1]


class Dealers
  def initialize(inventory)
      @inventory = inventory
  end

  def cars
      print "#{@inventory[gets.chomp.downcase.to_sym].join(", ")} \n"
  end

  def list_car
      @inventory.each {|key,value| print "#{key.to_s.capitalize}: #{value.join(", ")} \n"}
  end
end

inventory = {
      ford: ["Fiesta", "Mustang"],
      seat: ["Ibiza","Leon","Toledo"]}

car_dealers = Dealers.new(inventory)
car_dealers.list_car
car_dealers.cars
car_dealers.cars