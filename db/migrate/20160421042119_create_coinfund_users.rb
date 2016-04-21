class CreateCoinfundUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :coinfund_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
