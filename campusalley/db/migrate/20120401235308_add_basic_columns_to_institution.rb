class AddBasicColumnsToInstitution < ActiveRecord::Migration
  def change
     change_table(:institutions) do |t|
      t.string :name, :limit=>200
    end
 
  end
end
