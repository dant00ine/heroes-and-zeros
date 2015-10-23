class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string :deed
      t.references :hero, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
