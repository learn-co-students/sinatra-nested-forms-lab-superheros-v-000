class Team
  attr_accessor :name, :motto


  def initialize(params)
    @name = (params[:name])
    @motto = (params[:motto])
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
