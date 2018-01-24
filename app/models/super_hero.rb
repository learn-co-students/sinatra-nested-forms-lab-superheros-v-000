class Super_hero

  attr_reader :name, :power, :biography

  @@super_heros = []

  def initialize(args)
    @name = args[name]
    @power = args[power]
    @biography = args[biography]
    @@super_heros << self
  end

  def self.all
    @@super_heros
  end

end