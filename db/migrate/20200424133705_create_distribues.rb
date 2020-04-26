class CreateDistribues < ActiveRecord::Migration[5.2]
  def change
    create_table :distribues do |t|
      t.string :titre

      t.timestamps
    end
  end
end
