# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    hygiene(self.hygiene)
  end

  def work_out
    self.hygiene -= 3
    #hygiene(self.hygiene)
    self.happiness += 2
    #happiness(self.happiness)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [friend, self].each {|x| x.happiness += 3}
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      [person, self].each {|x| x.happiness -= 2}
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      [person, self].each {|x| x.happiness += 1}
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end
