class AddMapToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :map, :string
  end
end
