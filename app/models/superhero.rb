class SuperHero
  attr_accessor:name, :power, :bio

  @@super_heros=[]
  
  def initialize(hash)
    @name = hash[:name]
    @power=hash[:power]
    @bio=hash[:bio]
    @@super_heros << self
  end

  def self.all
    @@super_heros
  end

end