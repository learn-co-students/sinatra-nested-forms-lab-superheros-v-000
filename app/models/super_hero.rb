class Super_hero
  attr_accessor :name, :power, :bio

  SUPER_HEROES = []


  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPER_HEROES << self
  end

  def self.all
    SUPER_HEROES
  end

end
