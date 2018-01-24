class Hero
  attr_reader :name, :power, :biography
  HEROES = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]

    # can also do:
    # params.each {|k, v| self.send(("#{k}="),v)}

    HEROES << self
  end

  def self.all
    HEROES
  end
end