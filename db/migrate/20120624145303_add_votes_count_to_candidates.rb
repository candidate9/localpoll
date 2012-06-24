class AddVotesCountToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :votes_count, :integer
  end
end
