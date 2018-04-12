class Team
  attr_accessor :name, :motto, :heroes
  @@all = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
