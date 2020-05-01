class AddContenuAndSlugToActualite < ActiveRecord::Migration[5.2]
  def change
    add_column :actualites, :contenu, :text
    add_column :actualites, :slug, :string
    add_index :actualites, :slug, unique: true
  end
end
