class Dog
	attr_accessor :name #Reader/ Writer en el mismo atributo
	attr_reader :breed #para poder leer las variables
	# attr_writer : #para poder sobrescribir las variables

	def initialize (arg1, arg2, arg3)
		@name = arg1
		@breed= arg2
		@bark= arg3
		archivo = File.open("#{@name}_smelled.txt","w")
		personas = archivo.print(nil)
		archivo.close
	end

	def bark

		puts @bark
	end

	def name=(str)

		@name = str
	end

	def name

		@name
	end

	def smell(person)

		archivo = File.open("#{@name}_smelled.txt", "a")
		archivo.puts(person)
		archivo.close

	end

	def people_smelled
		archivo = File.open("#{@name}_smelled.txt","r")
		people = archivo.read.split(/\n/)
		archivo.close
		people

	end

end

class Hound < Dog
	def bark
		puts "Bark!!!!"
	end
	def track
		puts "snif snif snif snif"
	end
end

class PetDog < Dog
	def initialize (nombre, breed, bark, oname)
		super(nombre, breed, bark)
		@oname= oname
	end		
	def fetch(toy)
		puts "Tengo #{toy}"
	end
end



blackie = PetDog.new("blackie", "chucho", "wooof", "Andy")

# blackie.fetch("pelota")
# blackie.bark
# blackie.name=("blacky")
# puts blackie.name


blackie.smell("Paco")
blackie.smell("Pepe")
blackie.smell("luis")
print blackie.people_smelled