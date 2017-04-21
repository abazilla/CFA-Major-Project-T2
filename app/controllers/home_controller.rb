class HomeController < ApplicationController
  def index
    @projects = Project.all
  end

  def send_email
    SiteMailer.send_email(name: params[:name], phone: params[:phone], email: params[:email], message: params[:message]).deliver
    redirect_to root_url, notice: "Email sent!"
  end
end
