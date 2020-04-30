class AddNomChefAndNationaliteAndTelephoneAndDateAndLieuAndCommuneAndQuartierAndCnamgsAndCnssAndOneToCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :nom_chef, :string
    add_column :comptes, :nationalite, :string
    add_column :comptes, :telephone, :string
    add_column :comptes, :date, :string
    add_column :comptes, :lieu, :string
    add_column :comptes, :commune, :string
    add_column :comptes, :quartier, :string
    add_column :comptes, :cnamgs, :string
    add_column :comptes, :cnss, :string
    add_column :comptes, :one, :string
  end
end
