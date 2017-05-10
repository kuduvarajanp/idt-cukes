Feature: News Datapics on live

Scenario: Datapics on live
	
	Given I visit 'http://www.bbc.co.uk/news/world-africa-28755033'
	Then I should see a Datapic
	And I should see the text 'Includes one in the US and six in Mali'

Scenario: Quiz on live

	Given I visit 'http://www.bbc.co.uk/news/magazine-38997118'
	Then I should see a Quiz with text 'Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?'

Scenario: Charts on live

	Given I visit 'http://www.bbc.co.uk/news/uk-politics-39056786'
	Then I should see a chart
	And I should see the text 'Asylum applicants in Sweden'

Scenario: Imageslider on live
	Given I visit 'http://www.bbc.co.uk/news/uk-england-london-38301208'
	Then I should see a imageslider
	And I should see the text 'Christmas rush hour in Oxford Street'

