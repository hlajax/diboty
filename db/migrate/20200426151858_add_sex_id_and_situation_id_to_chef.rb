class AddSexIdAndSituationIdToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :sex_id, :integer
    add_column :chefs, :situation_id, :integer
  end
end
