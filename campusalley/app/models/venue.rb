class Venue < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :institution
  
end
