class Distribue < ApplicationRecord
	has_many :banques
	has_many :loyerentreprises
	has_many :loyers
end
