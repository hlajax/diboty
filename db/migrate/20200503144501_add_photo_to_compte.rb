class AddPhotoToCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :photo, :string
  end
end
