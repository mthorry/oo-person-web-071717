# your code goes here.
# Each instance of person class can:
  # get paid/receive payments
  # take a bath
  # call a friend
  # start a conversation
  # state if they are happy and/or clean

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if (0..10).cover?(num)
      @happiness = num
    elsif num > 10
      @happiness = 10
    else
      @happiness = 0
    end
  end

  def hygiene=(num)
    if (0..10).cover?(num)
      @hygiene = num
    elsif num > 10
      @hygiene = 10
    else
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    hygiene=(self.hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    happiness=(self.happiness)
    self.hygiene -= 3
    hygiene=(self.hygiene)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    happiness=(self.happiness)
    friend.happiness += 3
    happiness=(friend.happiness)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      happiness=(self.happiness)
      friend.happiness -= 2
      happiness=(friend.happiness)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      happiness=(self.happiness)
      friend.happiness += 1
      happiness=(friend.happiness)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end







