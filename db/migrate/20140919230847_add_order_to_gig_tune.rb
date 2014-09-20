class AddOrderToGigTune < ActiveRecord::Migration
  def change
    add_column :gig_tunes, :order, :integer
  end
end
