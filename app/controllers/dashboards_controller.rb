class DashboardsController < ApplicationController
  before_filter :authenticate_company

  def show
    @job_offers = current_company.job_offers
  end
end