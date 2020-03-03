class ReservationsController < ApplicationController

  def new
    UserNotifierMailer.send_signup_email("xd").deliver
  end
end