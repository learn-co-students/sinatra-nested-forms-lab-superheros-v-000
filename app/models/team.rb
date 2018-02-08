class Team

  attr_accessor :name, :motto

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, motto)
    @name, @motto = name, motto
  end

end
