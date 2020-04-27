class AddDistribueIdToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :distribue_id, :integer
  end
end
