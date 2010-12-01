class UsersController < Clearance::UsersController
  def create
    @user = User.new params[:user]
    if @user.save
      sign_in(@user)
      redirect_to '/', :notice => "Signed in"
    else
      render :template => 'users/new'
    end
  end
end
