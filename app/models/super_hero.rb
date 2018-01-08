class SuperHero
  attr_accessor :name, :power, :bio

  def self.all
    @@all ||= []
    ## the '||=' allows me to have no hero as an empty array or nil.
  end

  def initialize(opts={})
    @name, @power, @bio = opts[:name], opts[:power], opts[:bio]
    self.save
  end

  def save
    self.class.all << self
  end
end
