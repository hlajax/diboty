class AddCompteurBeneficiaireToKitalimentaire < ActiveRecord::Migration[5.2]
  def change
    add_column :kitalimentaires, :compteur, :string
    add_column :kitalimentaires, :beneficiaire, :string
  end
end
