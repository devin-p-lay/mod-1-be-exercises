class Ogre 
    attr_reader :name,
                :home,
                :swings,
                :encounter_counter

    def initialize(name, home = 'Swamp')
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end
    
    def encounter(human)
        human.encountered 
        @encounter_counter += 1

        if human.notices_ogre?
            swing_at(human)
        end
    end 

    def swing_at(human)
        @swings += 1
        if @swings % 2 == 0 
            human.knock_out 
        end
    end

    def apologize(human)
        human.revive
    end
end



class Human 
    attr_reader :name,
                :encounter_counter
    
    def initialize(name = 'Jane')
        @name = name 
        @encounter_counter = 0
        @KOd = false
    end

    def encountered 
        @encounter_counter += 1
    end

    def notices_ogre? 
        @encounter_counter % 3 == 0
    end 

    def knock_out
        @KOd = true 
    end

    def knocked_out? 
        @KOd 
    end

    def revive 
        @KOd = false
    end 
end 