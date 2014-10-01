class AddSetsToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :sets, :integer
  end
end
