class Actualite < ApplicationRecord
	extend FriendlyId
  	friendly_id :titre, use: :slugged
	mount_uploader :photo, FichierUploader
end
