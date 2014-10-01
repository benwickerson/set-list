class AddSetToGigTune < ActiveRecord::Migration
  def change
    add_column :gig_tunes, :set, :integer
  end
end
