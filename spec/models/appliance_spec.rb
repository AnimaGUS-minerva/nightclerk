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
  end
end
