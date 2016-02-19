class Player
  def initialize(story)
      @story = story
      @room = 0
      self.listening_user
  end

  def listening_user
    input_user = ""
    while input_user != "exit"
          puts @story[@room].describe
          input_user = gets.chomp
          self.input_user(input_user)
    end 
  end
  def input_user(input_user)
    if input_user == "show"
      puts @story[@room].tool.print_screen

    elsif self.navigator(input_user)
      
    end
    
  end
  def navigator(input_user)
    if input_user == @story[@room].exit
      @room +=1
    elsif input_user == @story[@room].enter
      @room -=1
    else
      puts "======================"
      puts "| It is not that way |"
      puts "======================"

    end
    @story 
  end
end

class Room
  attr_reader :description, :enter, :exit, :tool
  def initialize (text, enter, exit, tool)
      @description = text
      @enter = enter
      @exit = exit
      @tool = tool
  end

  def describe
    print @description
  end
end

class Tool
  def initialize(shape)
    @shape = shape
  end
  def use
    if @shape == "knife"
      "Crashhhh"
    end
  end
  def print_screen
    if @shape == "knife"
        print "
                                             _----..................___
           __,,..,-====>       _,.--''------'' |   _____  ______________`''--._
          |      `|   __..--''                |  /::: / /:::::::::::::: |      `|
            |       `''                        | /____/ /___ ____ _____::|    .  |
             |         Muela GRIZZLY     ,.... |            `    `     | |   ( )  |
              `.                       |`     `.| ,,''`'- ,.----------.._     `   |
                `.                     |        ,'       `               `-.      |
                  `-._                 |                                    ``.. |
                      `---..............>"
    end
  end
end

knife = Tool.new("knife")

door = ["N", "S", "E", "W"]

room1 = Room.new("You just appear in life",nil,door[0],knife)
room2 = Room.new("Good Job! you are starting to crawl",door[1],door[0],"")
room3 = Room.new("You hate everyone and everything",door[1],door[0],"")
room4 = Room.new("The job is killing you, you have no time",door[1],door[0],"")
room5 = Room.new("Life is beutiful and nothing can distub you in this life",door[1],nil,"")

story = [room1, room2, room3, room4, room5]

joaquin = Player.new(story)