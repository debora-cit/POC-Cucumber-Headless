def fix_image_file_name name
    without_spaces = name.gsub(/[\s]+/,"_")
    without_non_ascii_chars = without_spaces.gsub(/[^a-zA-Z_0-9\-]/,"")
    current_time_stamp = Time.now.to_i.to_s
    fixed_name = 'screenshot_' + without_non_ascii_chars + '_' + current_time_stamp +'.png'
    current_date = Date.today.to_s
    folder_name = current_time_stamp
    fixed_name = 'Evidencias/'+current_date +'/'+folder_name +'/'+fixed_name
    return fixed_name
end

Given(/^I am on the WikiPedia homepage$/) do
  visit "http://en.wikipedia.org/"
end

When(/^I search for "([^"]*)"$/) do |key_words|
  fill_in 'searchInput' ,  :with => key_words
  click_button 'searchButton'
end

Then(/^I should see an entry about "([^"]*)"$/) do |link_name|
  expect(page).to have_content(link_name)
end

Then(/^I should be able to click the link "([^"]*)"$/) do |link_name|
  click_link link_name
  #save_screenshot fix_image_file_name link_name
  save_screenshot 'screenshot_' + link_name + '.png'
end
