class CreateCoinfundProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :coinfund_projects do |t|
      t.string :name
      t.string :homepage
      t.references :sector, foreign_key: true

      t.timestamps
    end
  end
end
