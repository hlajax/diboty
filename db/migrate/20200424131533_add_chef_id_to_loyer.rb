class AddChefIdToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :chef_id, :integer
  end
end
