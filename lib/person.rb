require 'pry'

# your code goes here
class Person
    #each instance of Person should be able to remember their name
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # def bank_account

    # end

    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene=(@hygiene += 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness += 2)
        self.hygiene=(@hygiene -= 3)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=(@happiness += 3)
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(personToStart, topic)
        people = [self, personToStart]
        if topic == 'politics'
            people.each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            people.each {|person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

person1 = Person.new("Ian")
# binding.pry