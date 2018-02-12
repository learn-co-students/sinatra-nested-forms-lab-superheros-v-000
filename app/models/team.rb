class Team

    attr_accessor :name, :motto, :hero

    @@all = []

    def initialize(params)
        @name = params[:name] 
        @motto = params[:motto]
        @hero = params[:hero]
        @@all << self
    end

    def self.all
        @@all
    end

end