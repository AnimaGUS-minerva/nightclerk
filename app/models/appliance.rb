class Appliance < ApplicationRecord
  belongs_to :owner

  has_many :activities, as: :trackable
end
