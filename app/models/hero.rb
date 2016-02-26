class Hero

  attr_accessor :name, :power, :bio

  @@HEROS = []

  def initialize(options)
    @name = options[:name]
    @power = options[:power]
    @bio = options[:bio]
    @@HEROS << self
  end

  def self.all
    @@HEROS
  end

end