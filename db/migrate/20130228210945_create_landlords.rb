class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|

      t.timestamps
    end
  end
end