class Member

  MEMBERS = []

  attr_reader :name, :power, :bio

  def initialized(params={})
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

end
