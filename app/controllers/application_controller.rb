class ApplicationController < ActionController::Base
  include Authem::ControllerSupport
  protect_from_forgery
end
