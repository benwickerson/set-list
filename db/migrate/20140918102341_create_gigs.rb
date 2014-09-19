class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :gig
      t.date :gig_date

      t.timestamps
    end
  end
end
