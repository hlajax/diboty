class AddSecteurAndEmployeurAndRevenuToBanquealimentaire < ActiveRecord::Migration[5.2]
  def change
    add_column :banquealimentaires, :secteur, :string
    add_column :banquealimentaires, :employeur, :string
    add_column :banquealimentaires, :revenu, :string
  end
end
