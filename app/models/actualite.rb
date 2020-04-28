class Actualite < ApplicationRecord
	mount_uploader :photo, FichierUploader
end
