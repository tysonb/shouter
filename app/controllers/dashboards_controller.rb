class DashboardsController < ApplicationController
  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @shouts = current_user.shouts.ordered
  end
end
