class Wizard 
    attr_reader :name 

    def initialize(name, bearded: true)
        @name = name 
        @bearded = bearded
        @rest = 0
    end

    def bearded?
        @bearded
    end

    def incantation(spell)
        "sudo #{spell}"
    end

    def rested?
        @rest < 3
    end 

    def cast
        @rest += 1 
        'MAGIC MISSILE!'
    end
end