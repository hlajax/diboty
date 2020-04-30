class AddSexIdToCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :sex_id, :integer
  end
end
