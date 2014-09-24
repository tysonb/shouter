class DashboardsController < ApplicationController
  def show
    @text_shout = TextShout.new
    @shouts = current_user.shouts.ordered
  end
end
