class CreateSexes < ActiveRecord::Migration[5.2]
  def change
    create_table :sexes do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :sexes, :slug, unique: true
  end
end
