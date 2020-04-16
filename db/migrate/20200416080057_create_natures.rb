class CreateNatures < ActiveRecord::Migration[5.2]
  def change
    create_table :natures do |t|
      t.string :nom
      t.text :detail
      t.string :slug

      t.timestamps
    end
    add_index :natures, :slug, unique: true
  end
end
