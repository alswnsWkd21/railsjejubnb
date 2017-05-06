class AdminSessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by_email(params[:email])
    if admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to houses_url, notice: '관리자로 로그인 하였습니다.'
    else
      redirect_to admin_login_url, error: '관리자 로그인에 실패하였습니다.'
    end
  end

  def destroy
    session.delete(:admin_id) if session[:admin_id].present?
    redirect_to root_url
  end

end