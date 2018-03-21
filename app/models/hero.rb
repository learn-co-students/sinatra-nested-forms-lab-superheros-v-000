class Hero
  attr_accessor :name, :power, :bio

  @@heroes = []

  def initalize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@heroes << self
  end

  def self.all
    @@heroes
  end


end
