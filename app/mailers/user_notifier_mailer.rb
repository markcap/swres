class UserNotifierMailer < ApplicationMailer
  default :from => "mark.desuu@gmail.com"
  
  def send_confirmation(email)
    attachments.inline['image.jpg'] = File.read('conf.png')
    mail(:to => email,
        :subject => 'Confirmation!' )
  end
end
