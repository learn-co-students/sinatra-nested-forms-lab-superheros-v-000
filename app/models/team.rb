class Team
  attr_accessor :name, :motto

  def initialize(params)
    self.name = params[:name]
    self.motto = params[:motto]
  end
end