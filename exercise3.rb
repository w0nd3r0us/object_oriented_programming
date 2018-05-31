class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives = @lives + 1
  end

  def collect_treasure
    @gold_coins = @gold_coins + 1
      if @gold_coins % 10 == 0
        level_up
      end
    return @gold_coins
  end


  # def do_battle(damage)
  # end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def display_g
    @gold_coins
  end

  def display_h
    @health_points
  end

  def display_l
    @lives
  end

end

john = Player.new

p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure
p john.collect_treasure


p john.display_g
p john.display_h
p john.display_l
