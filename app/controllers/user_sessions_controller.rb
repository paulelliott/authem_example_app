class UserSessionsController < ApplicationController
  skip_before_filter :require_user, except: :destroy

  def create
    if sign_in(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to(posts_path)
    else
      flash[:alert] = "Unable to authenticate"
      render :new
    end
  end

  def update
    establish_presence(User.find_by_email(params[:logged_in_user]))
    redirect_to :root
  end

  def destroy
    sign_out
    redirect_to :root
  end
end
