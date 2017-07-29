class ApplicationController < ActionController::Base
  before_action :authenticate_mode!
  protect_from_forgery with: :exception
end
