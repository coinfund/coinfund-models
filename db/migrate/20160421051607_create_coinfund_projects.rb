class CreateCoinfundProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :homepage
      t.integer :status, default: 0

      t.boolean :watching, default: false
      t.boolean :engagement, default: false
      t.boolean :long, default: false

      t.references :sector, foreign_key: true, references: :coinfund_sectors

      t.timestamps
    end
  end
end
