class Reservation
  
  def self.yeet
    browser = Ferrum::Browser.new
    browser.goto("https://www.southwest.com/air/check-in/index.html")
    input = browser.at_css("input[id='confirmationNumber']")
    input.focus.type("Y63N9W")
    input = browser.at_css("input[id='passengerFirstName']")
    input.focus.type("Mark")
    input = browser.at_css("input[id='passengerLastName']")
    input.focus.type("Caps")
    browser.at_css("button[id='form-mixin--submit-button']").click
    sleep(10)
    browser.screenshot(path: "discdd.png")
    browser.quit
  end
end