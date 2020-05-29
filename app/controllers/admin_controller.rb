class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'application_admin'
  # before_action :authenticate_user!
end
