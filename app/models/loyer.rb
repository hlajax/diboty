class Loyer < ApplicationRecord
	mount_uploader :pieceb, FichierUploader
	mount_uploader :piecec, FichierUploader
	mount_uploader :photo, FichierUploader
	belongs_to :province
	belongs_to :arrondissement
	belongs_to :type
	belongs_to :construction
	belongs_to :piece
	belongs_to :situation
	belongs_to :chef
	belongs_to :distribue
	belongs_to :compte
end
