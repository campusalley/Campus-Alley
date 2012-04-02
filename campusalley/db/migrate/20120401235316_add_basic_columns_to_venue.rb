class AddBasicColumnsToVenue < ActiveRecord::Migration
  def change
     change_table(:venues) do |t|
      t.string :name, :limit=>200
      t.decimal :location_x
      t.decimal :location_y
      t.references :institution_id
    end
 
  end
end
