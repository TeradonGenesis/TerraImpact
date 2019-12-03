class AddUserIdToImpacts < ActiveRecord::Migration[6.0]
  def change
    add_column :impacts, :user_ID, :integer
  end
end
