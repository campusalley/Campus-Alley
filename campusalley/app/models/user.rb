class User < ActiveRecord::Base
  #acts_as_paranoid
  validates_uniqueness_of :my_column_name
  
  # attr_accessible :title, :body
  belongs_to :institution
  has_and_belongs_to_many :posts
  
  #attr_accessor :new_password, :new_password_confirmation
  #attr_accessor :email, :role, :institution_id
  validates_confirmation_of :new_password, :if=>:password_changed?
  before_save :hash_new_password, :if=>:password_changed?
 
  #User roles: 
  #global_admin, inst_admin, regular  
  def create_user(params)
params = {:email=>"test", :role=>"test", :password=>"test", :institution=>Institution.find(1)}    
       email = params[:email]
      @new_password = params[:password]
      @new_password_confirmation = params[:password]
       institution = params[:institution]
       role = params[:role]

 
      if  email and @new_password 
puts "Foop"
	 user = User.new
	 user.email =  email
	 user.institution_id =  institution.id
	 #user.role =  role
	#@user.hash_new_password

	if  user.save
debugger 	  
	   user
	else
	  nil
	end
      else
puts "joop"	
	nil
      end
  end
 
  # Authentication 
  def self.authenticate(email, password)
    # Because we use bcrypt we can't do this query in one part, first
    # we need to fetch the potential user
    if user = find_by_email(email)
      # Then compare the provided password against the hashed one in the db.
      if BCrypt::Password.new(user.hashed_password).is_password? password
	# If they match we return the user 
	return user
      end
    end
    # If we get here it means either there's no user with that email, or the wrong
    # password was provided.  But we don't want to let an attacker know which. 
    return nil
  end
  
  def password_changed?
    !@new_password.blank?
  end

  private
  # This is where the real work is done, store the BCrypt hash in the
  # database
  def hash_new_password
    self.hashed_password = BCrypt::Password.create(@new_password)
  end
  
  
  
    
end
