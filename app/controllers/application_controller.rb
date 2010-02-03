# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
#require 'comma'
class ApplicationController < ActionController::Base
	helper :all 				# include all helpers, all the time
	protect_from_forgery 		# See ActionController::RequestForgeryProtection for details
	filter_parameter_logging :password		# Scrub sensitive parameters from your log
	before_filter { |c| Authorization.current_user = @current_user }
	

##from authlogic example http://github.com/binarylogic/authlogic_example/blob/master/README.rdoc#readme
	helper_method :current_user_session, :current_user
	filter_parameter_logging :password, :password_confirmation
##end authlogic example part 1
	
	private
##from authlogic example http://github.com/binarylogic/authlogic_example/blob/master/README.rdoc#readme
	def current_user_session
	  return @current_user_session if defined?(@current_user_session)
	  @current_user_session = UserSession.find
	end
	
	def current_user
	  return @current_user if defined?(@current_user)
	  @current_user = current_user_session && current_user_session.record
	end
	
	def require_user
	  unless current_user
		store_location
		flash[:notice] = "You must be logged in to access this page"
		redirect_to new_user_session_url
		return false
	  end
	end
	
	def require_no_user
	  if current_user
		store_location
		flash[:notice] = "You must be logged out to access this page"
		redirect_to account_url
		return false
	  end
	end
	
	def store_location
	  session[:return_to] = request.request_uri
	end
	
	def redirect_back_or_default(default)
	  redirect_to(session[:return_to] || default)
	  session[:return_to] = nil
	end
##end authlogic example part 2(privates)

end
