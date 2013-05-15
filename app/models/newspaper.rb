class Newspaper < ActiveRecord::Base
  attr_accessible :title, :editor

  has_many :subscription_plans

  validates :title, :editor, presence: true
end