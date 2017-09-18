class Team

  @@team = []
  attr_accessor :name, :motto

  def initialize(input)
    @name = input[:name]
    @motto = input[:motto]
    @@team << self
  end

  def self.all
    @@team
  end

  def self.clear
    @@team = []
  end

end
