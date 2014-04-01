class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  def set_locale
    if ['de', 'en'].include?(params[:locale])
      I18n.locale = params[:locale]
    else
      client_locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
      I18n.locale = ['de', 'en'].include?(client_locale) ? client_locale : I18n.default_locale
    end
  end

  def default_url_options(options={})
    { locale: params[:locale] }
  end
end
