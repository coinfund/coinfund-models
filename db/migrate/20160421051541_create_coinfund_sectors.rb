class CreateCoinfundSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :coinfund_sectors do |t|
      t.string :name, unique: true

      t.timestamps
    end
  end
end
