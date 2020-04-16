class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :types, :slug, unique: true
  end
end
