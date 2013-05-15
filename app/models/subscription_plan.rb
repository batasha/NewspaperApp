class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :weekly, :newspaper_id

  belongs_to :newspaper

  validates_inclusion_of :weekly, in: [true, false]
  validates :price_in_cents, :newspaper, presence: true

  def price
    (self.price_in_cents || 0) / 100.0
  end

  def price=(dollars)
    self.price_in_cents = (dollars.to_f * 100).to_i
  end
end