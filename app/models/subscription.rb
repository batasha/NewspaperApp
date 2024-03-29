class Subscription < ActiveRecord::Base
  attr_accessible :subscription_plan_id, :subscriber_id

  belongs_to :subscription_plan
  belongs_to :subscriber, class_name: "User", foreign_key: :subscriber_id

  validates :subscription_plan_id, :subscriber_id, presence: true
end