class Appliance < ApplicationRecord
  belongs_to :owner

  has_many :activities, as: :trackable

  def onboard_start!
    act=self.activities.create
    act
  end
end
