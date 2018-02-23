class Hero
   attr_accessor :name, :power, :bio
   HEROS = []
   def initialize(attributes)
      @name = attributes[:name]
      @power = attributes[:power]
      @bio = attributes[:bio]
      HEROS << self
   end

   def self.all
      HEROS
   end
end