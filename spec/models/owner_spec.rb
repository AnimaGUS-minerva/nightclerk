require 'rails_helper'

RSpec.describe Owner, type: :model do
  fixtures :all
  describe "relationships" do
    it "should have one server" do
      one = owners(:one)
      expect(one.servers).to_not be_nil
    end
  end
end
