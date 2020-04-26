class AddCommuneAndQuartierAndDateAndLieuAndCnamgsAndCnssAndOneAndReligionAndLieuDePriereAndArrondissementIdToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :commune, :string
    add_column :chefs, :quartier, :string
    add_column :chefs, :date, :string
    add_column :chefs, :lieu, :string
    add_column :chefs, :cnamgs, :string
    add_column :chefs, :cnss, :string
    add_column :chefs, :one, :string
    add_column :chefs, :religion, :string
    add_column :chefs, :lieu_de_priere, :string
    add_column :chefs, :arrondissement_id, :integer
  end
end
