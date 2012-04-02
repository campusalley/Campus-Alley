class AddBasicColumnsToUser < ActiveRecord::Migration
  def change
    
    change_table(:users) do |t|
      t.string :first_name, :limit=>50
      t.string :last_name,  :limit=>50
      t.string :email, :limit=>50
      t.string :hashed_password
      t.references :institution
    end
 
    
  end
end
