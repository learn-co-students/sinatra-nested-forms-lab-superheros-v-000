class Member

  attr_accessor :name, :power, :biography

  @@members = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @@members << self
  end

  def self.clear
    @@members.clear
  end

  def self.all
    @@members
  end

end