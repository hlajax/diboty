class AddSlugToHabitat < ActiveRecord::Migration[5.2]
  def change
    add_column :habitats, :slug, :string
    add_index :habitats, :slug, unique: true
  end
end
