class Hero
  attr_accessor :name, :power, :bio
  @@hero = []

  def initialize(params)
      @name, @power, @bio = params[:name], params[:power], params[:bio]
      @@hero << self
  end

  def self.all
    @@hero
  end


end
