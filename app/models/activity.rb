class Activity < ApplicationRecord
  belongs_to :trackable, polymorphic: true

  state_machine :status, initial: :registered do
    state :registered do
    end

    #before_transition parked: any - :parked, do: :put_on_seatbelt

    #after_transition on: :crash, do: :tow
    #after_transition on: :repair, do: :fix
  end

  def initialize(*)
      super
  end

end
