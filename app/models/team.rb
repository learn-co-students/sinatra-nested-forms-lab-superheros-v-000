class Team
  attr_accessor :name, :motto

  @@teams = []

  def initialize(params)
    binding.pry
    @name = params[:name]
    @motto = params[:motto]
    @@teams << self
    binding.pry
  end

  def self.all
    @@teams
  end

end
