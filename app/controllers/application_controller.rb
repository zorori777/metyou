class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  def hello
    render 'layouts/application.html.erb'
  end

end
