class AddLoyerToKit < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :loyer, :string
  end
end
