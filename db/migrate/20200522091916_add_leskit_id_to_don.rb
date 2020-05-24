class AddLeskitIdToDon < ActiveRecord::Migration[5.2]
  def change
    add_column :dons, :leskit_id, :integer
  end
end
