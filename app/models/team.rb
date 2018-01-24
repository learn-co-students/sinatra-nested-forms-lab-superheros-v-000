class Team

  attr_accessor :name, :motto, :members

  def initialize(name,motto)
    @name = name
    @motto = motto
    @members = []
  end

  def add_member(member)
    member.team = self
    @members << member
  end

end
