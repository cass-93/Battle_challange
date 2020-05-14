class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def current_turn
    @current_turn
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_turns
    if @current_turn = @player_1
      @current_turn = @player_2
    else
      @current_turn = @player_1
    end
  end
end
