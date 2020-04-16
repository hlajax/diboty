class AddArrondissementToKit < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :arrondissement, :string
  end
end
