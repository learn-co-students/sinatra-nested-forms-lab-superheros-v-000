class Team
attr_accessor :name, :motto

  @@Teams = []
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]

    @@Teams = [] << self
  end

  def self.all
    @@Teams
  end

  def self.clear
    @@Teams = []
  end
end
