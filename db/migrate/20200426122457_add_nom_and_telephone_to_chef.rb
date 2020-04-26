class AddNomAndTelephoneToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :nom, :string
    add_column :chefs, :telephone, :string
  end
end
