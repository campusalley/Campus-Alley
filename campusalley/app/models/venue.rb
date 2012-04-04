class Venue < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :institution
  
  def create_venue(params)
    
  end
  
end
