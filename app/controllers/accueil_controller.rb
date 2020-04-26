class AccueilController < ApplicationController
	before_action :authenticate_chef!, except: [:show]
  def index
  end
end
