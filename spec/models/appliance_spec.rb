require 'rails_helper'

RSpec.describe Appliance, type: :model do
  fixtures :all
  describe "relationships" do
    it "should have an owner" do
      one = appliances(:one)
      expect(one.owner).to_not be_nil
    end

    it "should have an activity" do
      one = appliances(:one)
      expect(one.activities.count).to_not eq(0)
    end

    it "should have zero activities" do
      two = appliances(:two)
      expect(two.activities.count).to eq(0)
    end

    it "should create an activity when asked to onboard" do
      two = appliances(:two)
      act02 = two.onboard_start!
      expect(act02).to_not be_nil
    end
  end
end
