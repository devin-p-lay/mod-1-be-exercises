class Dragon 
    attr_reader :name,
                :rider,
                :color

    def initialize(name, color, rider)
        @name = name
        @rider = rider
        @color = color
        @hungry = true 
        @meal = 0
    end

    def hungry? 
        @hungry
    end 

    def eat 
        @meal += 1 
        if @meal == 3 
            @hungry = false 
            @meal = 0 
        end
    end
end