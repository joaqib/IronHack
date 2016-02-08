require 'pry'

class ChessValidator 
  def initialize(board, pieces)
    @board = board
    @pieces = pieces
    self.listening_to_user
  end
  def add_piece(piece)

    @pieces.push(piece)
  end

  def listening_to_user
    input = ""
    while input != "exit"
      input = gets.chomp.downcase
      if input != "exit"
        arr = input.split(" ")
        position1 = arr[0]
       position2 = arr[1]
       self.check(position1,position2)
      else
        puts "Good Bye"
      end
    end
  end

  def check(position1,position2)
    @position1 = position1
    @position2 = position2
    self.convert(@position1,@position2)
    self.check_origin(@origen_converted)
    self.validator(@piece)
  end

  def convert(position1,position2)
    @origen = position1.split("").reverse
    @destino = position2.split("").reverse
    x_axys = ["a","b","c","d","e","f","g","h"]
    @origen_converted = [x_axys.index(@origen[1]), @origen[0].to_i - 1]
    @destino_converted = [x_axys.index(@destino[1]), @destino[0].to_i - 1]

  end
  def check_origin(origen_converted)
      @piece = @board[@origen_converted[1]][@origen_converted[0]]
  end
  def validator(piece)
    piece_converted = piece
    binding.pry
    if piece_converted == "bR" || piece_converted == "wR"
      puts @pieces[0].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "bB" || piece_converted == "wB"
      puts @pieces[1].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "bQ" || piece_converted == "wQ"
      puts @pieces[2].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "bK" || piece_converted == "wK"
      puts @pieces[3].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "wP" 
      puts @pieces[4].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "bP" 
      puts @pieces[5].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "bN" || piece_converted == "wN"
      puts @pieces[6].movement(@origen_converted,@destino_converted)
    elsif piece_converted == "--" 
      puts false
    end
  end
end

module Movement
   def horizontal_movement(origen_converted, destino_converted)
     if origen_converted[0] == destino_converted[0] || origen_converted[1] == destino_converted[1]
       true
     else
       false
     end
   end
   def diagonal_movement(origen_converted, destino_converted)
      if (destino_converted[0]-origen_converted[0]).abs == (destino_converted[1] - origen_converted[1]).abs
        true
      else
        false
      end
    end
end



class Rock
  include Movement
  def movement(origen_converted,destino_converted)
    @origen_converted = origen_converted
    @destino_converted = destino_converted
    horizontal_movement(@origen_converted,@destino_converted)
  end
end

class Bishop
  include Movement
  def movement(origen_converted,destino_converted)
    @origen_converted = origen_converted
    @destino_converted = destino_converted
    self.diagonal_movement(@origen_converted,@destino_converted)
  end
end

class Queen
  include Movement
  def movement(origen_converted,destino_converted)
    @origen_converted = origen_converted
    @destino_converted = destino_converted
    if self.horizontal_movement(@origen_converted,@destino_converted) || self.diagonal_movement(@origen_converted,@destino_converted)
      true
    else false
    end
  end
end

class King
  include Movement
   def movement(origen_converted,destino_converted)
     @origen_converted = origen_converted
     @destino_converted = destino_converted
     if ((horizontal_movement(@origen_converted,@destino_converted) && ((@origen_converted[0]-@destino_converted[0]).abs ==1 )|| (@origen_converted[1]-@destino_converted[1]).abs ==1)) || (( @destino_converted[0]- @origen_converted[0]).abs == ((@destino_converted[1] - @origen_converted[1]).abs ) && (@destino_converted[0] - @origen_converted[0] == 1))
       true
     else 
      false
     end
   end
end

class WPawn
  include Movement
  def movement(origen_converted,destino_converted)
    @origen_converted = origen_converted
    @destino_converted = destino_converted
    if @origen_converted[1] == 6
      if @origen_converted[0] == @destino_converted[0] && @origen_converted[1] > @destino_converted[1] && (@origen_converted[1] - @destino_converted[1]).abs <=2
      true
      else
        if (@origen_converted[0] == @destino_converted[0]) && (@origen_converted[1] > @destino_converted[1]) && ((@origen_converted[1] - @destino_converted[1]).abs == 1)
          true
        else
          false
      end

      end
    else
      if @origen_converted[0] == @destino_converted[0] && @origen_converted[1] < @destino_converted[1] && (@origen_converted[0] - @destino_converted[0]).abs = 1
      true
      else
      false
      end
    end
  end
end

class BPawn
  include Movement
  def movement(origen_converted,destino_converted)
    @origen_converted = origen_converted
    @destino_converted = destino_converted
    if @origen_converted[1] == 1
      if @origen_converted[0] == @destino_converted[0] && @origen_converted[1] < @destino_converted[1] && (@origen_converted[1] - @destino_converted[1]).abs <=2
      true
      else
      false
      end
    else
      if (@origen_converted[0] == @destino_converted[0] && @origen_converted[1] < @destino_converted[1]) && (@origen_converted[1] - @destino_converted[1]).abs = 1
      true
      else
      false
      end
    end
  end
end

class Knight
  def movement(origen_converted,destino_converted)
    @origen_converted = origen_converted
    @destino_converted = destino_converted    
    if ((@origen_converted[0] - @destino_converted[0]).abs == 2 && (@origen_converted[0] - @destino_converted[0]).abs ==1 )|| ((@origen_converted[1] - @destino_converted[1]).abs == 2 && (@origen_converted[0] - @destino_converted[0]).abs ==1 )
      true
    else
      false 
    end
  end
 end

r = Rock.new
b = Bishop.new
q = Queen.new
k = King.new
wp = WPawn.new
bp = BPawn.new
n = Knight.new

pieces = []
pieces.push(r)
pieces.push(b)
pieces.push(q)
pieces.push(k)
pieces.push(wp)
pieces.push(bp)
pieces.push(n)

archivo = File.open("ChessBoad.txt", "r")
grid = archivo.read.split(/\n/)
archivo.close
board = grid.map {|element| element.split(" ")}
  
validator = ChessValidator.new(board, pieces)