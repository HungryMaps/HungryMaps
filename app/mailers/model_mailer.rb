class ModelMailer < ActionMailer::Base
  default from: "from@sandbox1c3fe1cbdd0146938456a99be894245c.mailgun.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(orden, current_user)
  @orden = orden
  mail to: current_user.email , subject: "Orden con HungryMaps"
end

end
