class Institution < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :users
  has_many :venues
  
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
  
  def add_venue(params)
    v = Venue.new
    v.name = params[:name]
    v.institution_id = self.object_id
    v.save
  end
  
  def add_map(filename)
    file_root = "/public/maps/"
    self.map = "#{file_root}#{filename}"
    self.save
  end
  
  def add_user_to_institution(params)
    params.merge({:institution=>self})
    new_user = User.create_user(params)
    if new_user
      new_user
    else
      nil
    end
  end
  
  
  
end
