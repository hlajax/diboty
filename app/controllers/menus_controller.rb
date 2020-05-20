class MenusController < ApplicationController
	before_action :authenticate_chef!
	def index
  		@actualites = Actualite.all
  	end
end
