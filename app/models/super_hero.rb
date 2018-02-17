class SuperHero
attr_accessor :name, :power, :Bio

  def self.all
    @@all ||= []
  end

  def initialize(args={})
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    self.save
  end

  def save
    self.class.all << self
  end


end
