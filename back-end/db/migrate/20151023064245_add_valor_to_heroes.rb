class AddValorToHeroes < ActiveRecord::Migration
  def change
  	add_column :heros, :valor, :integer
  end
end
