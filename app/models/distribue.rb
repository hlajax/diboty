class Distribue < ApplicationRecord
	has_many :banquealimentaires
	has_many :loyerentreprises
	has_many :loyers
end
