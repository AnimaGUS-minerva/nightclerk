require 'rails_helper'

RSpec.describe "Activities", type: :request do
  fixtures :all

  describe "activity status" do
    it "should return a status when queried" do
      act01 = activities(:one)
      env = Hash.new
      env['ACCEPT'] = 'application/json'

      get "/activities/#{act01.id}", :headers => env
      expect(response).to have_http_status(200)
    end
  end
end
