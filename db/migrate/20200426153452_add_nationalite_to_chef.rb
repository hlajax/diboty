class AddNationaliteToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :nationalite, :string
  end
end
