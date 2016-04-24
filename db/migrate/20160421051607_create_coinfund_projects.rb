class CreateCoinfundProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :coinfund_projects do |t|
      t.string :name
      t.string :homepage
      t.integer :status, default: 0
      t.references :sector, foreign_key: true, references: :coinfund_sectors

      t.timestamps
    end
  end
end
