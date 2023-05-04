require 'rails_helper'

RSpec.describe Activity, type: :model do
  fixtures :all
  describe "relationships" do
    it "should have a related appliance" do
      one = activities(:one)
      expect(one.trackable).to_not be_nil
    end
  end
end
