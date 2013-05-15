class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :weekly, :newspaper_id

  belongs_to :newspaper, inverse_of: :subscription_plans
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, class_name: "User"

  validates_inclusion_of :weekly, in: [true, false]
  validates :price_in_cents, presence: true

  def price
    (self.price_in_cents || 0) / 100.0
  end

  def price=(dollars)
    self.price_in_cents = (dollars.to_f * 100).to_i
  end

  def to_s
    type = "#{weekly ? "Weekly" : "Daily"} Subscription"
    cost = "$%.2f" % price
    "#{type} #{cost}"
  end
end