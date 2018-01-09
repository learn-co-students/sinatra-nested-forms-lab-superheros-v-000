class SuperHero
  attr_accessor :name, :power, :bio

  def initialize(opts={})
    @name = opts[:name]
    @power = opts[:power]
    @bio = otps[:bio]
    self.save
  end

  def self.all
    @@all ||= []
  end

  def save
    self.save.all << self
  end
end
