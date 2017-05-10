Given(/^I visit 'http:\/\/www\.bbc\.co\.uk\/news\/world\-africa\-(\d+)'$/) do |url|
  visit 'http://www.bbc.co.uk/news/world-africa-28755033'
end

Then(/^I should see a Datapic$/) do
   expect(page).to have_selector(:xpath, '//*[@id="ns_datapic_ebola-updates"]')
end

Then(/^I should see the text 'Includes one in the US and six in Mali'$/) do
   expect(page).to have_content("Includes one in the US and six in Mali")
end

Given(/^I visit 'http:\/\/www\.bbc\.co\.uk\/news\/magazine\-(\d+)'$/) do |url|
 	visit 'http://www.bbc.co.uk/news/magazine-38997118'
end


Then(/^I should see a Quiz with text 'Which film star and amateur pilot is being investigated by US aviation authorities after a near\-miss with a jet airliner\?'$/) do
   if page.has_css?("iframe") #Check inside iframe if present
   		page.within_frame 0 do
      		expect(page).to have_content("Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?") 
      end                
    end
end

Given(/^I visit 'http:\/\/www\.bbc\.co\.uk\/news\/uk\-politics\-(\d+)'$/) do |url|
   visit 'http://www.bbc.co.uk/news/uk-politics-39056786'
end

Then(/^I should see a chart$/) do
	expect(page).to have_selector(:xpath, '//*[@id="ns_chart_Sweden_asylum"]')
end

Then(/^I should see the text 'Asylum applicants in Sweden'$/) do
 if page.has_css?("iframe") #Check inside iframe if present
   		page.within_frame 0 do
      		expect(page).to have_content("Asylum applicants in Sweden") 
      end                
    end
 end

 Given(/^I visit 'http:\/\/www\.bbc\.co\.uk\/news\/uk\-england\-london\-(\d+)'$/) do |url|
  visit 'http://www.bbc.co.uk/news/uk-england-london-38301208'
end

Then(/^I should see a imageslider$/) do
  expect(page).to have_selector(:xpath, '//*[@id="news_idt__image-slider__oxfordstreet"]')
end

Then(/^I should see the text 'Christmas rush hour in Oxford Street'$/) do
  expect(page).to have_content("Christmas rush hour in Oxford Street") 
end