class AddNationaliteIdToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :nationalite_id, :integer
  end
end
