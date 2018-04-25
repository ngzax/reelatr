class RenameProspectsToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_table :prospects, :contacts
  end
end
