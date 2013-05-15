class RemoveUserIdFromSubscriptions < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :user_id
    add_column :subscriptions, :subscriber_id, :integer
    add_index :subscriptions, :subscriber_id
  end
end
