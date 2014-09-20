class CreateRehersalTunes < ActiveRecord::Migration
  def change
    create_table :rehersal_tunes do |t|
      t.integer :rehersal_id
      t.integer :tune_id
      t.string :notes

      t.timestamps
    end
  end
end
