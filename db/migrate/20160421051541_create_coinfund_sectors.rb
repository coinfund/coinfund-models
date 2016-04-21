class CreateCoinfundSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :coinfund_sectors do |t|
      t.string :name

      t.timestamps
    end
  end
end
