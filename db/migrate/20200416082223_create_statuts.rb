class CreateStatuts < ActiveRecord::Migration[5.2]
  def change
    create_table :statuts do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
