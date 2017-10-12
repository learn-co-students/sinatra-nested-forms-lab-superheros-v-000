class CreateHeroes < ActiveRecord::Migration[5.1]
  def change
    create_table :heroes do |h|
      h.string :name
      h.string :power
      h.string :bio
      h.integer :team_id
    end
  end
end
