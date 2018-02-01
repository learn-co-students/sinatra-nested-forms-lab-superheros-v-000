class Team
  attr_accessor :name, :motto, :members
  @@teams = []

  def initialize(params)
    @name = params[:name]
    @motto = params [:motto]
    self.save
  end

  def save
    @@teams << self
  end

  def self.all
    @@teams
  end

end
