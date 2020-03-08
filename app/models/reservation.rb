class Reservation < ApplicationRecord
  
  def checkin
    browser = Ferrum::Browser.new
    browser.goto("https://www.southwest.com/air/check-in/index.html")
    input = browser.at_css("input[id='confirmationNumber']")
    input.focus.type(code)
    input = browser.at_css("input[id='passengerFirstName']")
    input.focus.type(firstname)
    input = browser.at_css("input[id='passengerLastName']")
    input.focus.type(lastname)
    browser.at_css("button[id='form-mixin--submit-button']").click
    sleep(10)
    browser.screenshot(path: "conf.png")
    browser.quit
    UserNotifierMailer.send_confirmation(email).deliver
    update_attributes(complete: true)
  end
end