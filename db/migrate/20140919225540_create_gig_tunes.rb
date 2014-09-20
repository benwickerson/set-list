class CreateGigTunes < ActiveRecord::Migration
  def change
    create_table :gig_tunes do |t|
      t.integer :gig_id
      t.integer :tune_id
      t.string :notes

      t.timestamps
    end
  end
end
