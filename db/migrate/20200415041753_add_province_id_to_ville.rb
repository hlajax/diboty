class AddProvinceIdToVille < ActiveRecord::Migration[5.2]
  def change
    add_column :villes, :province_id, :integer
  end
end
