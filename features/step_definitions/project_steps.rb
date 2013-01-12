Given /^there is a project called "([^\"]*)"$/ do |name|
	@project = Factory(:project, :name => name)
end

Given /^I am o the homepage$/ do
  pending # express the regexp above with the code you wish you had
end

