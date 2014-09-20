class RenameOrderToPosition < ActiveRecord::Migration
  def change
    rename_column :gig_tunes, :order, :position
  end
end
