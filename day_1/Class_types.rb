#en el ultimo ejercicio hemos aprendido a guardar informacion diciendo la variable y lo que vale 

var1 = "esto es una variable"

#ahora tenemos que ver que pueden involucrarse de distinta forma, Strings, Integers, Arrays y Hashes



#STRINGS, estas simplemente guardan texto 

	unescaped_string = 'this is shanons unescaped string'

	#no sale bien la de abajo
	escaped_string = 'this is shanon \ ´s escaped string'
	escaped_string2 = "this is shanon\n ´s escaped string 2"

	puts unescaped_string
	puts escaped_string
	puts escaped_string2

	name = "mr. Bond"
	capitalized_name = name.capitalize 
	puts "hello #{capitalized_name}"

	#otra cosa que puedes hacer con Strings es dividir en cierto caracter

	flavours = "chocolate, mint, strawberry, vanilla, caramel, chili"
	flavours_array = flavours.split(", ")
	puts flavours_array

	#podemos encontrar como de larga es una String con Lenght
	"cuantos caracteres tiene esta String".length

	#por ultimo podemos ver que una String incluye especificos caracteres que responde con true or false

	"awesome".include? "you"
	"awesome".include? "me"
	phrase = "Just kidding, you´re awesome too"
	phrase.include? "aw"

#-----------------------------------------------------------------

#INTEGERS
	#en ruby los numeros se dividen en Integers (numeros enteros)y en Floats(numeros con decimales) 
	#a su vez los Integers se dividen en Fixnum y Bignum
	#no vamo a utilizar nunca los Bignum porque no los vamos a necesitar
	#como se utilizan?

	age = 28
	cats = 5 

	#los numeros grandes de pueden separar por _ y ruby los obvia
	#que podemos hacer con Integers?
	#saber si un numero es even or odd que nos responde con true or false

	age = 28
	age.odd?
	age.even?

	#puede redondearlos

	age = 28
	age.round(-1) #nos devuelve 30
	age.round(1) #nos devuelve 28

	#con times podemos ejecutar un trozo de codigo varias veces

	3.times { puts "beetlejuice"}

#-----------------------------------------------------------------

#ARRAYS
	#esto sirve para manejar listas estructuradas o colecciones de datos

	animals = ["leones", "tigres", 3]
	puts animals

	#en estas Arrays se puede guardar todo tipo de variables
	puts animals[0] #esto va a poner leones
	puts animals[2] #esto va a poner 3

	#que pueden hacer las ARRAYS??
	#se pueden modificar añadiendo con << o .push y eliminar con .delete_at 

	my_array = []
	my_array << "A"
	my_array.push "B"
	my_array.push "C"
	
	puts my_array

	my_array.delete_at 2

	puts my_array

	#otra cosa interesante que pueden hacer nuestras Arrays es ordenar los datos de forma alfabetica o de mayor a menor
	[4,6,1,3,5,4,12].sort
	["g", "a", "w", "b"].sort

	#e igual que podemos dividir las Strings en Arrays, podemos unirlos con join

	["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join
  		=> "chocolatemintstrawberryvanillacaramelchili"
	["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join(", ")
  		=> "chocolate, mint, strawberry, vanilla, caramel, chili"

#-----------------------------------------------------------------

#HASHES
# son como arrays pero en vez de un orden o numero asociado tiene un nombre, como un diccionario

	my_hash = {}
	my_hash["AST"] = "Asturias"
	my_hash["GAL"] = "Galicia"

	puts my_hash["AST"]
	puts my_hash["GAL"]

	puts my_hash

	#que podemos hacer?

	#ver si nuestro hash tiene una determinada clave
	my_hash = {}
	my_hash["AST"] = "Asturias"
	my_hash[“GAL”] = "Galicia"
#----------------
	my_hash.has_key?("AST") 
	 => true
	my_hash.has_key?("CAT")
	 => false

	 #ver si nuestro hash tiene un determinado valor
	 my_hash.has_value?("Galicia")
	 => true

	 #mas cosas es el metodo select, esto significa que Ruby selecciona el trozo de codigo que pase unas ciertas condiciones
	 my_hash.select { |key, value| key.include?("G") }
		=> { "GAL" => "Galicia" }








