class SuperHero
  attr_accessor :name, :power, :bio

  def self.all
    @@all ||= []
  end

  def initialize(options={})
    @name  = options[:name]
    @power = options[:power]
    @bio   = options[:bio]
    self.save
  end

  def save
    self.class.all << self
  end
end
