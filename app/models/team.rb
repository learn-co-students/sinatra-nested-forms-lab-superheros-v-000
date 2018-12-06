class Team

  attr_accessor :name, :motto

  @@all = Array.new

  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
