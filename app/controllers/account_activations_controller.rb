class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = "アカウント有効化成功しました"
      redirect_to user
    else
      flash[:danger] = "アカウント有効化失敗しました"
      redirect_to root_url
    end
  end
end
