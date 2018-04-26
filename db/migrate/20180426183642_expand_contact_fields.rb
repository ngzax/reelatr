class ExpandContactFields < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :address, :string
    add_column :contacts, :city,    :string
    add_column :contacts, :state,   :string
    add_column :contacts, :zip,     :string
  end
end
