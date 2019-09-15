class Hero
  attr_reader :name, :power, :bio

    @@heroes = []

    def initialize(params)
      @name = params[:name]
      @power = params[:power]
      @bio = params[:bio]
      @@heroes << self
    end

    def self.all
      @@heroes
    end

  end
