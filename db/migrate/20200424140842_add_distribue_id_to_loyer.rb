class AddDistribueIdToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :distribue_id, :integer
  end
end
