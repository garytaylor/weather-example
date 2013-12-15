#Deletes all cookies.  This can be done during a step, or possibly before every scenario if it is not too expensive
def remove_all_cookies
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
end