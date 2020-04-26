class AddDistribueIdToKit < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :distribue_id, :integer
  end
end
