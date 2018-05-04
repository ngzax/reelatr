class RequireContactUser < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :user_id, :integer, null: false
    remove_column :contacts, :birthdate
  end
end
