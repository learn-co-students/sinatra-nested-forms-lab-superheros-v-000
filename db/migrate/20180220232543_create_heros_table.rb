class CreateHerosTable < ActiveRecord::Migration[5.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :power
      t.string :bio
      t.string :team_id
    end
  end
end
