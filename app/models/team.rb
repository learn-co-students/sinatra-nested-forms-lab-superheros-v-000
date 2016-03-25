class Team
  attr_accessor :name, :moto
  @@teams = []
  def initialize(params)
    @name = params[:name]
    @moto = params[:motto]
    @@teams << self
  end
  def self.all
    @@teams
  end
end
