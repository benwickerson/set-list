class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :tune
      t.boolean :vocal
      t.string :key

      t.timestamps
    end
  end
end
