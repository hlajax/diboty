class PieceLocataire < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
  	has_many :loyers
end
