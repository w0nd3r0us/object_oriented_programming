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


  def do_battle(damage)
    @health_points = @health_points - damage.to_i
      if @health_points < 1
        @lives = @lives - 1

          if @lives <= 0
            restart
          end

        @health_points = 10
      end
  end

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
# 
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
# p john.collect_treasure
#
# p john.display_g
# p john.display_h
# p john.display_l
#
# p john.do_battle(10)
#
# p john.display_g
# p john.display_h
# p john.display_l
