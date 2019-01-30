# your code goes here
require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

  def take_bath
    @hygiene += 4
    hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    hygiene
    happiness
    return "♪ another one bites the dust ♫"
  end

  def happiness(num)
    @hygiene = num
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
  end


  def hygiene(num)
    @hygiene = num
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def call_friend(friend)
    "Hi #{friend.name}! It's #{@name}. How are you?"
    @happiness += 3
    happiness
    friend.happiness += 3
  end

  def start_conversation()
  end

end
