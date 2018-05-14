class Superhero < ActiveRecord::Base
  # attr_reader :name, :power, :bio
  belongs_to :team
  # SUPERHEROS = []
  #
  # def initialize(params)
  #   @name = params[:name]
  #   @power = params[:power]
  #   @bio = params[:bio]
  #   SUPERHEROS << self
  # end
  #
  # def self.all
  #   SUPERHEROS
  # end
end
