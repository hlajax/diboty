class DashboardController < ApplicationController
  before_action :authenticate_chef!
end
