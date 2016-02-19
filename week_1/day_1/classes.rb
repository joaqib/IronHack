class Car #creacion de una nueva clase que se llama car
	attr_accessor :color #esto permite modificiar la variable color fuera de las caracteristicas de la clase

	def initialize(color) #variables que se ponen al iniciar una clase
		@color = color
	end

	def honk #metodo de clase
		puts "Beeeeep"
	end

	def print_color
		puts @color
	end
end

my_car = Car.new "red"
my_car.honk
my_car.print_color

other_car = Car.new "Black"
other_car.print_color

my_car.color = "grey"
puts my_car.print_color

class Animal
	def initialize(name)
		@name = name
	end

	def describe
		puts "this animal´s name is #{@name}"
	end
end

class Dog < Animal
	end

class Cat < Animal
	end

class Human < Animal
	def initialize(name, salary)
		super(name)
		@salary = salary
	end

	def describe_salary
		puts "this human is #{@name} and its salary is #{@salary}"
	end

end

animal1 = Dog.new "Winston Churchill"
animal2 = Cat.new "Deadmau5"
animal3 = Human.new "Joaquin Ibanez", 12000

animal1.describe
animal2.describe
animal3.describe
animal3.describe_salary
