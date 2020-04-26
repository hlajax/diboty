class AddProvinceIdToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :province_id, :integer
  end
end
