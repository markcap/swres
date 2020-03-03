class UserNotifierMailer < ApplicationMailer
  default :from => "mark.desuu@gmail.com"
  
  def send_confirmation(reservation)
    mail(:to => "kurzdaze@yahoo.com",
        :subject => 'Confirmation!' )
  end
end
