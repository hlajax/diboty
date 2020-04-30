class Chef < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :kits
         has_many :loyers
         has_many :banquealimentaires
         has_many :dons
         has_many :don_numeraires
         has_many :signalements
         has_many :loyerentreprises
         has_many :comptes
         belongs_to :sex
		 belongs_to :statut
		 belongs_to :situation
		 belongs_to :ville
		 belongs_to :province
		 belongs_to :arrondissement
end
