class CreateActus < ActiveRecord::Migration[5.2]
  def change
    create_table :actus do |t|
      t.string :nom

      t.timestamps
    end
  end
end
