class HomepageController < ApplicationController
  def index
  end

  def about
  end

  def contact
    if params[:form]
      FormMailer.contact(params[:form]).deliver
      render template: 'homepage/contact.sent'
    end
  end
end
