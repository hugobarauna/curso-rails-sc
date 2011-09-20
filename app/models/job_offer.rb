class JobOffer < ActiveRecord::Base
  belongs_to :company

  validates :title, :description, :presence => true
end
