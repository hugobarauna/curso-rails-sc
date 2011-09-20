class SessionsController < ApplicationController
  def new
  end

  def create
    @company = Company.authenticate(params[:username], params[:password])

    if @company
      flash[:notice] = "Welcome!"
      session[:company_id] = @company.id
      redirect_to dashboard_path
    else
      flash[:alert] = "Invalid username/password combination"
      render "new"
    end
  end

  def destroy
    session[:company_id] = nil
    redirect_to root_path, :notice => "You logged out succesfully. See ya!"
  end
end