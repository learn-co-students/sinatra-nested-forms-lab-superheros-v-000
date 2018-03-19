class Team
  attr_accessor :name, :motto

  ALL = [].freeze

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    ALL << self
  end

  def self.all
    ALL
  end
end
