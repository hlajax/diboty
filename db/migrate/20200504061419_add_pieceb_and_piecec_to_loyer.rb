class AddPiecebAndPiececToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :pieceb, :string
    add_column :loyers, :piecec, :string
  end
end
