When /^I visit the home page$/ do
  get '/'
end

Then /^I should see the logo$/ do
  last_response.should have_selector("img[src='/images/logo.png']")
end
