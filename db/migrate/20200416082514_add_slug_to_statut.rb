class AddSlugToStatut < ActiveRecord::Migration[5.2]
  def change
    add_column :statuts, :slug, :string
    add_index :statuts, :slug, unique: true
  end
end
