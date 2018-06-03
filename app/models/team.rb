class Team
  attr_reader :name, :motto, :members
  def initialize(team)
    @name = team[:name]
    @motto = team[:motto]
    @members = team[:members].collect{|hash| Member.new(hash)}
  end
end