class AddIndexToSubscriptionPlans < ActiveRecord::Migration
  def change
    add_index :subscription_plans, :newspaper_id
  end
end
