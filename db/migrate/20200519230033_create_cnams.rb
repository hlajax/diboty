class CreateCnams < ActiveRecord::Migration[5.2]
  def change
    create_table :cnams do |t|
      t.string :libelle
      t.text :description

      t.timestamps
    end
  end
end
