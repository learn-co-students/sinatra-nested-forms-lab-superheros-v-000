class Member
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]

    @@all << self
  end

  def self.new_from_array(array)
    array.each { |member_hash| self.new(member_hash) }
  end

  def self.all
    @@all
  end
end
