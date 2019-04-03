class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/rollovers/index'
      else
        render :new
  end
end
    def logout
    session.delete(:user_id)
    redirect_to root_path
end

private

def user_params
  params.require(:user).permit(:username, :password)
end

end          
      