class Newspaper < ActiveRecord::Base
  attr_accessible :title, :editor, :subscription_plans_attributes

  has_many :subscription_plans, inverse_of: :newspaper, dependent: :destroy
  accepts_nested_attributes_for :subscription_plans

  validates :title, :editor, presence: true
end