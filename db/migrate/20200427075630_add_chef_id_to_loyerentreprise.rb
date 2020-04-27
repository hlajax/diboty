class AddChefIdToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :chef_id, :integer
  end
end
