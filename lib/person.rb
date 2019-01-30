# your code goes herebu
#Sofia did most of this, I typed it.
#

class Person
attr_writer :bank_account
attr_reader :name, :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(index)
    @happiness = index
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(index)
    @hygiene = index
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account = bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    hygiene=(self.hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    hygiene=(self.hygiene)
    self.happiness += 2
    happiness=(self.happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(instance_person)
    self.happiness += 3
    happiness=(self.happiness)
    instance_person.happiness += 3
    happiness=(instance_person.happiness)
    "Hi #{instance_person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(instance_person, topic)
    if topic == "politics"
      self.happiness -= 2
      happiness=(self.happiness)
      instance_person.happiness -= 2
      happiness=(instance_person.happiness)
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      happiness=(self.happiness)
      instance_person.happiness += 1
      happiness=(instance_person.happiness)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
