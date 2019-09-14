class Team

  @@teams = []

  attr_accessor :name, :motto

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @@teams << self
  end

  def self.all
    @@teams
  end

end
