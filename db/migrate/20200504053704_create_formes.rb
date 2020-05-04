class CreateFormes < ActiveRecord::Migration[5.2]
  def change
    create_table :formes do |t|
      t.string :nom
      t.string :slug

      t.timestamps
    end
    add_index :formes, :slug, unique: true
  end
end
