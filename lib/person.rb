# your code goes here
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
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

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"

  end

  def call_friend(friend)
    self.happiness += 3

    if friend == "Felix"
      return "Hi Felix! It's Stella. How are you?"
    end
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      #both get sadder
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      #both get lil happier
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
