class Team < ActiveRecord::Base
  # attr_reader :name, :motto
  has_many :superheros
  #
  # TEAMS = []
  #
  # def initialize(params)
  #   @name = params[:name]
  #   @motto = params[:motto]
  #   TEAMS << self
  # end
  #
  # def self.all
  #   TEAMS
  # end
end
