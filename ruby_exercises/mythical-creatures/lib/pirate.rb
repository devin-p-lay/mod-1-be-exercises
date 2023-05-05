class Pirate 
    attr_reader :name,
                :job,
                :booty

    def initialize(name, job = 'Scallywag')
        @name = name 
        @job = job
        @cursed = false
        @curse = 0 
        @booty = 0
    end 

    def cursed?
        @cursed 
    end

    def commit_heinous_act 
        @curse += 1 
        if @curse == 3 
            @cursed = true 
            @curse = 0 
        end
    end

    def rob_ship
        @booty += 100
    end
end