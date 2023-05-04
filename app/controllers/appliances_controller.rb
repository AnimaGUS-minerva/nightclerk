require 'byebug'

class AppliancesController < ApplicationController

  def create
    appliance = Appliance.new
    appliance.requesting_address = request.env["REMOTE_ADDR"]
    unless params[:email]
      head 404, :text => "Missing email"
      return
    end

    owner = Owner.find_or_create_by(:email => params[:email])
    appliance.owner = owner
    appliance.save!

    # now create an activity to start the onboarding.
    activity = appliance.onboard_start!

    head 201, :location => url_for(activity)
  end

end
