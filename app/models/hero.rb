class Hero 
    attr_accessor :name, :power, :bio

    @@all = []
    
    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
end