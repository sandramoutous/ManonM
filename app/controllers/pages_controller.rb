class PagesController < ApplicationController
  def home; end

  def about
    @principal_user = User.where(firstname: 'Manon', lastname: 'Mathieu').first
  end
end
