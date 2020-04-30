class AddCompteIdToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :compte_id, :integer
  end
end
