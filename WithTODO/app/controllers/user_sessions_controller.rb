class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @skip_header_footer = true
  end

  def create
    @skip_header_footer = true
    @user = login(params[:email], params[:password])
    if @user
      flash[:success] ='ログインに成功しました'
      redirect_to tasks_path
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other #あとでさよなら画面に変える
  end
end