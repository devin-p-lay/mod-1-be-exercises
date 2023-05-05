class Werewolf 
    attr_reader :name,
                :location
    attr_accessor :human,
                  :hungry

    def initialize(name, location = 'London')
        @name = name
        @location = location
        @human = true
        @hungry = false 
    end

    def human?
        @human 
    end

    def change! 
        if @human == true 
            @human = false 
            @hungry = true
        elsif @human != true 
            @human = true
        end
    end

    def wolf?
        @human == false 
    end

    def hungry?
        @hungry
    end

    def consume(victim)
        if @human == true
            'I do not eat fellow humans!'
        elsif wolf?
            victim.status = :dead 
            @hungry = false 
            'Nom Nom Nomm'
        end
    end
end