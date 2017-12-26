class SuperHero
  attr_accessor :name, :power, :bio
   MEMBER= []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    MEMBER << self
  end

  def self.all
    MEMBER
end
end
