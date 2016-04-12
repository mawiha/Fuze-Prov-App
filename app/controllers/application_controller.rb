class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Restrict access. Only signed in users can access the new/create,
  # edit, create and delete actions.
  before_action :authenticate_user!

end
