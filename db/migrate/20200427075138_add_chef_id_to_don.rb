class AddChefIdToDon < ActiveRecord::Migration[5.2]
  def change
    add_column :dons, :chef_id, :integer
  end
end
