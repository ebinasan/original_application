class UsersController < ApplicationController
    skip_before_action :require_login, only: %i[new create]
  
    def new
      @user = User.new
    end

    def show
      @user = User.find(params[:id])
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to root_path, success: 'ユーザー登録に成功しました'
      else
        flash.now[:danger] = 'ユーザー登録に失敗しました'
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user, success: 'プロフィールが更新されました'
      else
        flash.now[:danger] = 'プロフィールの更新に失敗しました'
        render :edit, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end