require 'selenium-webdriver'

# jenkins
Encoding.default_external = 'UTF-8'

host = ENV['WEBDRIVER_HOST'] || 'localhost'
port = ENV['WEBDRIVER_PORT'] || '4444'

# intentional wait to make test longer and
# check if they are running properly

$intentional_wait = ENV['INTENTIONAL_WAIT']
RSpec.configure do |config|

  config.before(:context) do
    $driver = Selenium::WebDriver.for :remote,
                                      :url => "http://#{ host }:#{ port }/wd/hub",
                                      :desired_capabilities => :chrome
  end

  config.after(:context) do
    $driver.quit if $driver
  end
end
