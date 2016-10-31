class Business < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  scope :with_logo, -> { where.not(logo_url: [nil, ""]) }
  scope :with_catering, -> { where(offers_catering: true) }
end
