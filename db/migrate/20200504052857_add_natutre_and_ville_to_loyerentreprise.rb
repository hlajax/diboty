class AddNatutreAndVilleToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :nature, :string
    add_column :loyerentreprises, :ville, :string
  end
end
