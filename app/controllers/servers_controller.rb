require 'byebug'

class ServersController < ApplicationController

  def create
    appliance = Server.new
    appliance.requesting_address = request.env["REMOTE_ADDR"]
    unless params[:email]
      head 404, :text => "Missing email"
      return
    end

    owner = Owner.find_or_create_by(:email => params[:email])
    appliance.owner = owner
    appliance.save!

    head 201, :location => url_for(appliance)
  end

end
