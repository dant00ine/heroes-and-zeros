class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
