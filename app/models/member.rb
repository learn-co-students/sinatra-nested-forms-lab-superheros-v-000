class Member
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(params)
    @name, @power, @bio = params[:name], params[:power], params[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

end