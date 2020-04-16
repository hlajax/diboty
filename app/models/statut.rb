class Statut < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
	has_many :kits
end
