class AddSituationIdToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :situation_id, :integer
  end
end
