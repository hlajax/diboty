class Nature < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
  	has_many :don_numeraires
end
