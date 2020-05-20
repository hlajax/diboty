class AddContactAndMailToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :contact, :string
    add_column :loyerentreprises, :mail, :string
  end
end
