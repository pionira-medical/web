class FormMailer < ActionMailer::Base
  default from: 'info@pionira-medical.com'

  def contact(params)
    @params = params
    mail(to: 'info@pionira-medical.com', subject: 'New contact formular received')
  end
end
