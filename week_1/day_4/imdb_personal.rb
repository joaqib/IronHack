require 'imdb'
class Home
  def initialize
    @movies = []
    import_movies
  end
  def import_movies
    puts "¿¿Entre que 2 peliculas estais dudando??"
    
    
  end
  def method_name
    
  end
end

class Home
  def initialize
    @logfile="imdb.txt"
    @movies = []
  end
  def import_movies
      archivo = File.open(@logfile,"r")
      @movies = archivo.readlines
      archivo.close
      puts @movies
  end
  def busqueda_imdb
      @movies.each {|movie| Imdb::Search.new(movie)} 
  end
end


imdb = Home.new
# imdb.import_movies
imdb.busqueda_imdb