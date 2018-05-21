class Hero
  attr_reader :name, :power, :bio

  @@heros_array = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@heros_array << self
  end

  def self.all
    @@heros_array
  end

end
