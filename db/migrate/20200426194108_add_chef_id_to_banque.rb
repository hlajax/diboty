class AddChefIdToBanque < ActiveRecord::Migration[5.2]
  def change
    add_column :banques, :chef_id, :integer
  end
end
