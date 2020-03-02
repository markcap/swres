namespace :reservations do
  desc 'fulfills orders'
  task process: :environment do
    sleep(15)
    Reservation.first.update_attributes(code: Time.now.to_s)
  end
  
end