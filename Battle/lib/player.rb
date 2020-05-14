class Player
  DEFAULT_VALUE = 60
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_VALUE)
    @name = name
    @hp = hp
  end

  #attck method
  def attack
    reduce_hp
    #should call reduce hp
  end

  #reduce hp method
  def reduce_hp
    @hp -=10
  end
end
