class Car
  def initialize(engine)
    @engine = engine
  end
  def sound
      puts "chin chin chin  " + @engine.make_sound
  end

end

class Engine
  def initialize(sound)
    @sound = sound
  end
  def make_sound
    @sound
  end
end


engine = Engine.new("brumbrum brommmmmm")
car1 = Car.new(engine)
car1.sound

