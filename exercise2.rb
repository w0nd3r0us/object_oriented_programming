class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i

    if @meal_time <= 12
      @meal_defined = "#{@meal_time} AM"
    elsif @meal_time [12..23]
      @meal_defined = "#{@meal_time} PM"
    else
      @meal_defined = "youve input an incorrect feeding time"
    end

  end

  def eats_at
    @meal_defined
  end

  def meow
    p "My name is #{@name} and I eat #{@preferred_food} at #{@meal_defined}"
  end
end

cat1 = Cat.new("John", "fish", 12)
cat2 = Cat.new("Roger", "veal", 2)

cat1.meow
cat2.meow
