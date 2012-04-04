class AddTypeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :type, :string, :limit=>50
  end
end
