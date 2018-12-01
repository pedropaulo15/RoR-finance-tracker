class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # It makes sure that any action is only performed by an
  # authenticated user.
  before_action :authenticate_user!
end
