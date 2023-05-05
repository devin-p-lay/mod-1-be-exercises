class Medusa 
    attr_reader :name,
                :statues

    def initialize(name)
        @name = name 
        @statues = []
    end

    def stare(victim)
        @statues << victim
        victim.stoned = true
        if @statues.count == 4
            @statues[0].stoned = false
            @statues.shift
        end
    end
end


class Person 
    attr_reader :name 
    attr_accessor :stoned

    def initialize(name, stoned: false)
        @name = name
        @stoned = stoned
    end

    def stoned? 
        @stoned
    end
end