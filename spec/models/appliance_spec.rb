require 'rails_helper'

RSpec.describe Appliance, type: :model do
  fixtures :all
  describe "relationships" do
    it "should have an owner" do
      one = appliances(:one)
      expect(one.owner).to_not be_nil
    end
  end
end
