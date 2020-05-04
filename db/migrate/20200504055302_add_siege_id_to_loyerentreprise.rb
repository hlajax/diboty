class AddSiegeIdToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :siege_id, :integer
  end
end
