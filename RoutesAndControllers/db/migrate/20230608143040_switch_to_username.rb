class SwitchToUsername < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email, :string
    rename_column :users, :name, :username
  end
end
