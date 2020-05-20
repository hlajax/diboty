class AddNumerocToKitalimentaire < ActiveRecord::Migration[5.2]
  def change
    add_column :kitalimentaires, :numeroc, :string
  end
end
