class Team
  @@teams = []

  attr_accessor :name, :motto

    def initialize(params)
      @name = params[:name]
      @motto = params[:motto]
      @@teams << self
    end

    def self.all
      @@teams
    end

    def self.clear
      @@teams = []
    end
end
