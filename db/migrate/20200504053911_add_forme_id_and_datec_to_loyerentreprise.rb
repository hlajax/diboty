class AddFormeIdAndDatecToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :forme_id, :integer
    add_column :loyerentreprises, :datec, :string
  end
end
