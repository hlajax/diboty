class AddChefIdToKit < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :chef_id, :integer
  end
end
