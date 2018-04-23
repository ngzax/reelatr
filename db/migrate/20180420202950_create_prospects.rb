class CreateProspects < ActiveRecord::Migration[5.2]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :email
      t.date :birthdate
      t.text :note

      t.timestamps
    end
  end
end
