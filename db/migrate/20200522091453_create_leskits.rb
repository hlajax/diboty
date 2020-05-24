class CreateLeskits < ActiveRecord::Migration[5.2]
  def change
    create_table :leskits do |t|
      t.string :titre
      t.string :prix

      t.timestamps
    end
  end
end
