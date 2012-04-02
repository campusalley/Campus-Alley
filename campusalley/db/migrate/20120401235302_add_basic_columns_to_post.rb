class AddBasicColumnsToPost < ActiveRecord::Migration
  def change
    change_table(:posts) do |t|
      t.string :title, :limit=>200
      t.string :description
      t.references :user_id
      t.references :institution_id
      t.references :venue_id
    end
 
  end
end
