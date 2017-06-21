
def visit_url
  visit @url
end 

def assert_xpath_selector(selector)
  expect(page).to have_selector(:xpath, '//*[@id='+"\"#{selector}\""+']')
end

Given(/^I visit '(.*)'$/) do |url|
  @url = false
  @url = url
  @env=URI.parse(url).host
  @path=URI.parse(url).path
  puts @path
  visit_url
end

Given(/^I visit http:\/\/www\.bbc\.co\.uk\/news\/uk\-politics\-(\d+) page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a chart with ns_chart_Sweden_asylum$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the text Asylum applicants in Sweden$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^I should see a Datapic$/) do
    datapic_id = "ns_datapic_ebola-updates"
    assert_xpath_selector(datapic_id)
    # expect(page).to have_selector(:xpath, '//*[@id="ns_datapic_ebola-updates"]')
end

Then(/^I should see the text 'Includes one in the US and six in Mali'$/) do
   expect(page).to have_content("Includes one in the US and six in Mali")
end


Then(/^I should see a Quiz with text 'Which film star and amateur pilot is being investigated by US aviation authorities after a near\-miss with a jet airliner\?'$/) do
   if page.has_css?("iframe") #Check inside iframe if present
   		page.within_frame 0 do
      		expect(page).to have_content("Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?") 
      end                
    end
end


Then(/^I should see a chart$/) do
  if @path.include?("news")
    chart_id = "ns_chart_Sweden_asylum"
    assert_xpath_selector(chart_id)
  else
    chart_id = "ns_chart_GBvChinamedalstable"
    assert_xpath_selector(chart_id)
  end

	# expect(page).to have_selector(:xpath, '//*[@id="ns_chart_Sweden_asylum"]')
end

Then(/^I should see the text 'Asylum applicants in Sweden'$/) do
 if page.has_css?("iframe") #Check inside iframe if present
   		page.within_frame 0 do
      		expect(page).to have_content("Asylum applicants in Sweden") 
      end                
    end
 end

 Then(/^I should see the text 'Medals table final positions 1984-2016'$/) do
 if page.has_css?("iframe") #Check inside iframe if present
      page.within_frame 0 do
          expect(page).to have_content("Medals table final positions 1984-2016") 
      end                
    end
 end


Then(/^I should see a imageslider$/) do
  imageslider_id = "news_idt__image-slider__oxfordstreet"
  assert_xpath_selector(imageslider_id)
  # expect(page).to have_selector(:xpath, '//*[@id="news_idt__image-slider__oxfordstreet"]')
end

Then(/^I should see the text 'Christmas rush hour in Oxford Street'$/) do
  expect(page).to have_content("Christmas rush hour in Oxford Street") 
end