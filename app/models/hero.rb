require_relative "../../config/environment"

class Hero
    attr_accessor :name, :power, :bio, :team

    @@all = []

    def initialize(args)
        args.each do |key, value|
            self.send("#{key}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end
end