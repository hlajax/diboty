class AddCompteIdToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :compte_id, :integer
  end
end
