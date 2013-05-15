class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids

  has_many :subscriptions, foreign_key: :subscriber_id
  has_many :subscription_plans, through: :subscriptions

  validates :name, presence: true
end