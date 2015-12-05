class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all # include all helpers, all the time
  protect_from_forgery
  include ActionView::Helpers::NumberHelper
  before_filter :authenticate_teacher!
end
