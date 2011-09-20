class Dashboards::JobOffersController < ApplicationController
  before_filter :authenticate_company

  def new
    @job_offer = JobOffer.new
  end

  def create
    @job_offer = current_company.job_offers.new(params[:job_offer])

    if @job_offer.save
      redirect_to dashboard_path, :notice => "Job offer created."
    else
      render "new"
    end
  end
end