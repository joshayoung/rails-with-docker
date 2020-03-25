class UsersController < ActionController::Base
    helper_method :user_name

    def index; end

private
  def user_name
    User.new.name
  end
end