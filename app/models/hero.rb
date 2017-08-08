class Hero
  attr_accessor :name, :power, :bio
  HEROES =[]

  def initialize(params)
    @name, @power, @bio = params[:name], params[:power], params[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end
end
