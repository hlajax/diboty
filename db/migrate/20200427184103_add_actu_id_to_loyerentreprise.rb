class AddActuIdToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :actu_id, :integer
  end
end
