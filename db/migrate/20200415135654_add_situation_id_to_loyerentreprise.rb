class AddSituationIdToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :situation_id, :integer
  end
end
