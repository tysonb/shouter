class HomesController < ApplicationController
  before_filter :check_logged_in_user
  def show
  end

  # private methods - because controllers can tell other objects
  # what its actions are and we don't want to show private methods
  private

  def check_logged_in_user
    if signed_in?
      redirect_to dashboard_path
    end
  end
end
