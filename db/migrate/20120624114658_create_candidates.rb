class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :link
      t.integer :political_party_id
      t.integer :local_poll_id

      t.timestamps
    end
  end
end
