class CreateRehersals < ActiveRecord::Migration
  def change
    create_table :rehersals do |t|
      t.date :rehersal

      t.timestamps
    end
  end
end
