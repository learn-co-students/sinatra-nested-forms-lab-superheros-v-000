class Team

  attr_accessor :name, :motto

 MEMBERS = []

  def initialize(name, motto)
    @name = name
    @motto = motto
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

  def create_member(member)
    new_member = Hero.new(member)
    MEMBERS << new_member
  end


  def self.clear
      self.all.clear
    end

end
