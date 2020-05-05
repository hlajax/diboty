class AddPhotoToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :photo, :string
  end
end
