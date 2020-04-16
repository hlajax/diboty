class AddCommuneToKit < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :commune, :string
  end
end
