class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :street
      t.string :spot

      t.timestamps
    end
  end
end
