# Team class
class Team
  attr_accessor :name, :motto, :members

  @@all = []

  def initialize(name, motto)
    @name = name
    @motto = motto
    @members = []
  end

  def self.all
    @@all
  end
end
