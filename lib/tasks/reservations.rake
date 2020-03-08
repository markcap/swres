namespace :reservations do
  desc 'fulfills orders'
  task process: :environment do
    reservations = Reservation.where(complete: false).where("depart < ?", Time.now.getlocal('-06:00'))
    reservations.each do |reservation|
      reservation.checkin
    end
  end
  
end