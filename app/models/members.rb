class Member
  attr_accessor :name, :power, :bio
  @@all = []
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:biography]
    @@all << self
  end

  def self.all
    @@all
  end
end
