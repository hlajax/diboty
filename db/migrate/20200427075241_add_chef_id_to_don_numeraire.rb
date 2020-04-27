class AddChefIdToDonNumeraire < ActiveRecord::Migration[5.2]
  def change
    add_column :don_numeraires, :chef_id, :integer
  end
end
