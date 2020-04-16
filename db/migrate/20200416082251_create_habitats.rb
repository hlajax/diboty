class CreateHabitats < ActiveRecord::Migration[5.2]
  def change
    create_table :habitats do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
