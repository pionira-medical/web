module ApplicationHelper
  def switch_locale
    if I18n.locale.to_s == 'en'
      return link_to t('header.german'), params.merge(locale: :de)
    else
      return link_to t('header.english'), params.merge(locale: :en)
    end
  end
end
