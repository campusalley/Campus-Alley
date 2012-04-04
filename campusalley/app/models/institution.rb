class Institution < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :users
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :venues
  
  def self.create_institution(name)
    inst = Institution.new
    inst.name = name;
    
    #other parameters
    if inst.save
      inst
    else
      nil
    end
  end
  
  def add_user_to_institution(params)
    params.merge({:institution=>self})
    new_user = User.new(params)
    if new_user
      new_user
    else
      nil
    end
  end
  #def add groups
  #def add users
  #def add map
  #def add venues
  
  
end
