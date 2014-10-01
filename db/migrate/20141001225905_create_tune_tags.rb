class CreateTuneTags < ActiveRecord::Migration
  def change
    create_table :tune_tags do |t|
      t.integer :tune_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
