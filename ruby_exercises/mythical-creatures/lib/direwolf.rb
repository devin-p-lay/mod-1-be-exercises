class Direwolf 
    attr_reader :name,
                :home,
                :size,
                :starks_to_protect

    attr_writer :hunts_white_walkers

    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name 
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end

    def protects(stark)
        if stark.location == @home and @starks_to_protect.count < 2
            @starks_to_protect << stark 
            stark.safe = true
            @hunts_white_walkers = false
        end
    end

    def hunts_white_walkers?
        @hunts_white_walkers
    end

    def leaves(stark)
        stark.safe = false
        @starks_to_protect.delete(stark)
        stark
    end
end 

class Stark 
    attr_reader :name,
                :location

    attr_writer :safe

    def initialize(name, location = "Winterfell")
        @name = name 
        @location = location 
        @safe = false
    end

    def safe?
        @safe
    end

    def house_words
        'Winter is Coming'
    end
end