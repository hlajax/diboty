class AddSexIdToSignalement < ActiveRecord::Migration[5.2]
  def change
    add_column :signalements, :sex_id, :integer
  end
end
