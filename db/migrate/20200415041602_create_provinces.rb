class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :provinces, :slug, unique: true
  end
end
