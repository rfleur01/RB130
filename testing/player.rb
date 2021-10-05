class Player
  attr_accessor :name, :health

  def initialize(name, health=50)
    @name = name.capitalize
    @health = health
  end

  def boost
    raise NoMethodError if health < 0
    self.health += 20
  end

  def hurt
    raise NoMethodError if health < 0
    self.health -= 10
  end

  def dead?
    health < 0 ? true : false
  end

  def to_s
    if health < 0
      "I was #{name}, now I am dead :(."
    else
      "I'm #{name} with health = #{health}."
    end
  end
end
