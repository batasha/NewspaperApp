class CreateSubscriptionPlan < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.integer :price_in_cents
      t.boolean :weekly
      t.integer :newspaper_id
      t.timestamps
    end
  end
end
