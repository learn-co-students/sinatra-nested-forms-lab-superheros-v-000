class Team

  @@all = []

  attr_accessor :name, :motto

  def initialize(name = nil, motto = nil)
    @name = name
    @motto = motto
  end

  def self.all
    @all
  end

end
