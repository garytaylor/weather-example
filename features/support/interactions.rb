module Weather
  module Interactions
    class << self
      def request_forecast_for(page, location)
        page.fill_in 'forecast[location]', :with => location
        page.click_button 'Go'
      end
      def sign_up(page)
        page.fill_in 'user[email]', with: 'user@myemail.com'
        page.fill_in 'user[password]', with: 'testpassword'
        page.fill_in 'user[password_confirmation]', with: 'testpassword'
        page.click_button 'Sign up'
      end
    end
  end
end