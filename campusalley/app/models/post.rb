class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
 
  def create_post(params)
    
  end
  
  def edit_post
  end
  
  
end
