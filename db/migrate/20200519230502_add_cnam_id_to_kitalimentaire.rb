class AddCnamIdToKitalimentaire < ActiveRecord::Migration[5.2]
  def change
    add_column :kitalimentaires, :cnam_id, :integer
  end
end
