class Player
  LIVES = 3
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = LIVES
  end
end