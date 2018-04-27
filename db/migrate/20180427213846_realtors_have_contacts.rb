class RealtorsHaveContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :user_id, :integer
    add_foreign_key :contacts, :users, column: :user_id
  end
end
