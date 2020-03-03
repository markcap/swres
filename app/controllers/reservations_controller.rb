class ReservationsController < ApplicationController

  def new
    UserNotifierMailer.send_confirmation("xd").deliver
  end
end