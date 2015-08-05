class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

  def initialize(name)
    @name         = name
    @bank_account = 25
    @happiness    = 8
    @hygiene      = 8
  end

  def happiness=(index)
    @happiness = validate(index)
  end

  def hygiene=(index)
    @hygiene = validate(index)
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary

    'all about the benjamins'
  end

  def take_bath
    self.hygiene = hygiene + 4

    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene   = hygiene - 3
    self.happiness = happiness + 2

    '♪ another one bites the dust ♫'
  end

  def call_friend(person)
    [self, person].each { |p| p.happiness = p.happiness + 3 }

    "Hi #{person.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic

    when 'politics'
      [self, person].each { |p| p.happiness = p.happiness - 2 }
      'blah blah partisan blah lobbyist'

    when 'weather'
      [self, person].each { |p| p.happiness = p.happiness + 1 }
      'blah blah sun blah rain'

    else
      'blah blah blah blah blah'

    end
  end

  private

  def validate(index)
    if index > 10
      10
    elsif index < 0
      0
    else
      index
    end
  end
end
