module ApplicationHelper
  def link_to_switch_locale
    if I18n.locale.to_s == 'en'
      return link_to t('header.german'), root_url(locale: :de)
    else
      return link_to t('header.english'), root_url(locale: :en)
    end
  end
end
