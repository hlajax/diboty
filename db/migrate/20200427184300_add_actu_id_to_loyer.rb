class AddActuIdToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :actu_id, :integer
  end
end
