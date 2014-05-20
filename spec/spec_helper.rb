require 'turnip/capybara'
require 'capybara-webkit'

# stepファイルを読み込み
Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }

# seleniumでchromeを使いたい場合
# Please download the server from http://chromedriver.storage.googleapis.com/index.html
#
# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end



RSpec.configure do |config|

  config.before(:all) do

    Capybara.app_host = "http://www.yahoo.co.jp"

    Capybara.default_driver = :webkit
    Capybara.javascript_driver = :webkit

    # Capybara.default_driver = :selenium
    # Capybara.javascript_driver = :selenium

  end

  config.after(:all) do
    Capybara.use_default_driver
  end

end
