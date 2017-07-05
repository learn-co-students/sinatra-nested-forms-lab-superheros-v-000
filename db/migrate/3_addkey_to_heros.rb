class AddkeyToHeros < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :teams, :superheros
  end
end
