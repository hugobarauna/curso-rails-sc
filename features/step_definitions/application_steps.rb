Given /^the site has the following job offers:$/ do |table|
  table.raw.map(&:first).each {|job_title| Factory(:job_offer, :title => job_title) }
end

Then /^I should see the following job offers:$/ do |table|
  table.raw.map(&:first).each do |job_title|
    page.should have_content(job_title)
  end
end


Given /^I represent the (.+) company$/ do |company_name|
  @company_name = company_name
end

When /^signup for the site$/ do
  fill_in "Name",             :with => @company_name
  fill_in "Description",      :with => "The #{@company_name} is awesome."
  fill_in "Username",         :with => @company_name.downcase
  fill_in "Password",         :with => "123456"
  fill_in "Confirm password", :with => "123456"
  click_button "Signup"
end


Given /^the (.+) company registered for the JobBoard web appp$/ do |company_name|
  @company = Factory(:company,
                     :name => company_name, :username => company_name.downcase)
end

When /^fill in the login form with my credentials$/ do
  fill_in "Username", :with => @company.username
  fill_in "Password", :with => "123456"
end

Given /^I am logged in/ do
  @company = Factory(:company, :username => "plataformatec",
                     :password => "123456")
  visit login_path
  fill_in "Username", :with => @company.username
  fill_in "Password", :with => "123456"
  click_button "Login"
end

