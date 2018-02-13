class Super_Hero
  attr_reader :name, :power, :bio

    @@super_heroes = []

    def initialize(params)
      @name = params[:name]
      @power = params[:power]
      @bio = params[:bio]
      @@super_heroes << self
    end

    def self.all
      @@super_heroes
    end

    def self.clear
      @@super_heroes.clear
    end

  end
