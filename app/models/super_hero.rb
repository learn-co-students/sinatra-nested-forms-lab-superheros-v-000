class SuperHero
  attr_accessor :name, :power, :bio
  
  def initialize(opts = {})
    @name = opts[:name]
    @power = opts[:power]
    @bio = opts[:bio]
  end
  
end