class NewslettersController < ApplicationController
  NEWSLETTER_URL = 'http://lacocinasf.us12.list-manage.com/subscribe?u=78fee739303a3997a67a61e1a&id=051b66e4ec'

  def create
    redirect_url = email.present? ? NEWSLETTER_URL + "&MERGE0=#{email}" : NEWSLETTER_URL
    redirect_to redirect_url
  end

  private

  def email
    params.fetch(:newsletter, {}).fetch(:email)
  end
end
