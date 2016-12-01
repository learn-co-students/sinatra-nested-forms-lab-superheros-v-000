class Team

  attr_reader :name, :motto

  MEMBERS = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

end
