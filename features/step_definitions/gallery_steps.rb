Given /^the following galleries:$/ do |table|
  table.hashes.each do |attr|
    user = Factory(:user, :email => attr[:photographer])
    Factory(:gallery, :title => attr[:title], :user => user)
  end
end

Then /^I should see "([^"]*)" gallery by "([^"]*)"$/ do |title, photographer|
  gallery = Gallery.where(:title => title).first
  within("##{dom_id(gallery)}") do
    page.should have_css(".email", :text => photographer)
  end
end