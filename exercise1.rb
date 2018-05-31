# class Person
#
#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#   end
#
#   def greetings
#     return @first_name
#   end
#
# end
#

class BankAccount

  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate.to_f / 100
  end

  def deposit
    puts "please enter a deposit amount"
    @deposit_amount = gets.to_i
    @balance = @balance + @deposit_amount
  end

  def withdraw
    puts "how much would you like to withdraw"
    @withdrawal_amount = gets.to_i
      if @withdrawal_amount > @balance
        return "insufficent funds available"
      else
        @balance = @balance - @withdrawal_amount
      end
  end

  def display
    return @balance
  end

  def gain_interest
    @balance = (@interest_rate * @balance) + @balance
    @balance = @balance.round(lock
      2)
  end
end
