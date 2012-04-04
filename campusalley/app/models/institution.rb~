class Institution < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :users
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :venues
  
  def create_institution(name)
    inst = Institution.new
    inst.name = name;
    
    #other parameters
    if inst.save
      inst
    else
      nil
    end
  end
  
  #def add groups
  #def add users
  #def add map
  #def add venues
  
  
end
