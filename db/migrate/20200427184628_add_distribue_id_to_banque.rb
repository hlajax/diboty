class AddDistribueIdToBanque < ActiveRecord::Migration[5.2]
  def change
    add_column :banques, :distribue_id, :integer
  end
end
