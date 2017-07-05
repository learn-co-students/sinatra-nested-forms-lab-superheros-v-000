class Superheroes < ActiveRecord::Migration[5.1]
  def change
  	create_table :super_heros do |t|
  		t.string :name
  		t.string :supperpower
  		t.string :biography
  	end
  end
end
