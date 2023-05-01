class HomeController < ApplicationController
  def splash
    if current_user
      redirect_to categories_url, alert: "You are already logged in as, #{current_user.name}"
    else
      render :splash
    end
  end

  def index
    @user = current_user
  end

  def redirect_to_categories
    redirect_to categories_url
  end
end
