class User < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :institution
  has_and_belongs_to_many :posts
end