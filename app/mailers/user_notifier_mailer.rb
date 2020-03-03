class UserNotifierMailer < ApplicationMailer
  default :from => 'mark_kustyle@yahoo.com'
  
  def send_confirmation(reservation)
    mail(:to => "kurzdaze@yahoo.com",
        :subject => 'Confirmation!' )
  end
end
