class CreateCoinfundUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, unique: true
      t.string :password_digest
      t.string :access_token

      t.timestamps
    end
  end
end
