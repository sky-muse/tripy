class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(params_user)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path, success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path, danger: 'ログアウトしました'
  end

  private
  def params_user
    params.require(:session).permit(:email)
  end

  def log_in user
    session[:user_id] = user.id
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end


# ・入力されたメアド（params[:sesson][:email]）をDBから一致するものを探す（User.find_by）
# 　一致したものをuserに代入する
# ・代入されたuser（メアド一致したもの）かつ入力されたパス（params[:session][:password]）かを判断する
# ・trueならsession[:user_id]にuserのid番号を入れる
    # (def log_in user)
# ・falseならログイン失敗


# def destroy
# →session.delete(:user_id)で対応するsessionに保存されているuser_idを削除
