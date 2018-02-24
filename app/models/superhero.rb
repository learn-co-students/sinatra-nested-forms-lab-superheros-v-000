class SuperHero < ActiveRecord::Base
    belongs_to :team

    attr_accessor :name, :power, :bio
    SUPERHEROES = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]

        SUPERHEROES << self
    end

    def self.all
        SUPERHEROES
    end

    def self.clear
        SUPERHEROES.clear
    end
    
end