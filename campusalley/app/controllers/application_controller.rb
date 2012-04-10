class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    @title = "WHUP WHUP"
  end
  
end
