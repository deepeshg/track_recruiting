class AddUserIdToFirm < ActiveRecord::Migration
  def change
    add_column :firms, :user_id, :integer
  end
end
