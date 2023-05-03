require 'rails_helper'

RSpec.describe Server, type: :request do
  def appliance_default_cert
    @appliance_default_cert ||= IO.binread("spec/files/appliance_default.crt")
  end

  describe "POST /servers" do
    it "should fail if no email is provided" do
      env = Hash.new
      env["SSL_CLIENT_CERT"] = appliance_default_cert
      env["HTTP_ACCEPT"]  = "application/json"
      env["CONTENT_TYPE"] = "application/json"

      params = Hash.new
      body = params.to_json

      post "/servers", :params => body, :headers => env
      expect(response).to have_http_status(404)
    end

    it "should create a new server entry with email" do
      env = Hash.new
      env["SSL_CLIENT_CERT"] = appliance_default_cert
      env["HTTP_ACCEPT"]  = "application/json"
      env["CONTENT_TYPE"] = "application/json"

      params = Hash.new
      params[:email] = "foo@example.com"
      body = params.to_json

      post "/servers", :params => body, :headers => env
      expect(response).to have_http_status(201)
    end
  end
end
