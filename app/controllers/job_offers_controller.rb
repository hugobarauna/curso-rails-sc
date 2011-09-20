class JobOffersController < ApplicationController
  def index
    @job_offers = JobOffer.all
  end
end