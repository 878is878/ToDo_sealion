class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @skip_header_footer = true
    @user = SignupForm.new
  end

  def create
    @skip_header_footer = true
    @user = SignupForm.new(signup_params)
    if @user.save
      redirect_to tasks_path #あとで変える
    else
      render :new
    end
  end

  private

  def signup_params
    params.require(:signup_form).permit(:name, :email, :password, :password_confirmation)
  end
end