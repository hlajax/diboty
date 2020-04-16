class CreateConstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :constructions do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :constructions, :slug, unique: true
  end
end
