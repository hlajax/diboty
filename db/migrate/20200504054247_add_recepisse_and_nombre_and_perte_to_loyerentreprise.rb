class AddRecepisseAndNombreAndPerteToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :recepisse, :string
    add_column :loyerentreprises, :nombre, :string
    add_column :loyerentreprises, :perte, :string
  end
end
