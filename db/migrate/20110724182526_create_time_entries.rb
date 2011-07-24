class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.datetime :start
      t.datetime :end
      t.references :project

      t.timestamps
    end
    add_index :time_entries, :project_id
  end
end
