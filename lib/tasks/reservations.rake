namespace :reservations do
  desc 'fulfills orders'
  task process: :environment do
    Reservation.first.update_attributes(code: Time.now.to_s)
  end
  
end