require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

args = ["--no-default-browser-check", "--start-maximized"]

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
  "chromeOptions" => { "args" => args },
)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome

  # config.default_driver = :selenium #<== firefox

  config.app_host = "http://automationpractice.com/"
  Capybara::Selenium::Driver.new(desired_capabilities: caps)
end

Capybara.default_max_wait_time = 10
