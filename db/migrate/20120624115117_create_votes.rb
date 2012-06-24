class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :candidate_id
      t.integer :local_poll_id

      t.timestamps
    end
  end
end
