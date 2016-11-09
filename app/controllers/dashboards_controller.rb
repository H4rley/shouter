class DashboardsController < ApplicationController

  def show
  	#controller should create only one instance variable according sandy metz
    #@text_shout = TextShout.new
    #@photo_shout = PhotoShout.new
    #@shouts = current_user.shouts

    @dashboard = Dashboard.new(current_user)
  end

end