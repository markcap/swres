namespace :reservations do
  desc 'fulfills orders'
  task process: :environment do
    contact = Contact.first.phone.to_i + 1
    Contact.first.update_attributes(phone: contact.to_s)
  end
  
end