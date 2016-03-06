class Team

  attr_accessor :name, :motto, :members

  def initialize(team)
    team.each {|key, value| self.send("#{key}=", value)}
  end

end
