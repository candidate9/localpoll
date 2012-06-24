class CreateLocalPolls < ActiveRecord::Migration
  def change
    create_table :local_polls do |t|
      t.integer :constituency_id
      t.integer :poll_id
      t.string :name

      t.timestamps
    end
  end
end
