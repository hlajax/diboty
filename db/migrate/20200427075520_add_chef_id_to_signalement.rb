class AddChefIdToSignalement < ActiveRecord::Migration[5.2]
  def change
    add_column :signalements, :chef_id, :integer
  end
end
