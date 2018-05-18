class Team
  attr_reader :name, :motto, :members

  def initialize(name, motto, members)
    @name = name
    @motto = motto
    @members = members
  end
end
