class UserMoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @classifications = current_user.classifications
  end
end
