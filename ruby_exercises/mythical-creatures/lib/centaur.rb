class Centaur 
    attr_reader :name,
                :breed 

    def initialize(name, breed)
        @name = name 
        @breed = breed 
        @standing = true 
        @laying = false
        @stamina = 0
    end 

    def shoot 
        if cranky? or @laying == true
            'NO!'
        else
            @stamina += 1
            'Twang!!!'
        end
    end 
    
    def run 
        if @laying == true 
            'NO!'
        else 
            @stamina += 1
            'Clop clop clop clop!'
        end
    end

    def cranky? 
        @stamina >= 3   
    end 

    def standing? 
        @standing
    end 

    def sleep 
        if @standing == true 
            'NO!'
        else
            @stamina = 0
        end
    end

    def lay_down
        @standing = false
        @laying = true
    end 

    def laying?
        @laying
    end

    def stand_up
        @standing = true
        @laying = false
    end

    def drink_potion
        if @laying 
            "Neigh! I should be standing for this."
        elsif @stamina == 0 
            "...I'm feeling sick..."
        else
            @stamina = 0
        end
    end 
end 