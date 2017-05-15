Feature: IDT sanity test

@live
Scenario: Datapics on live
	
	Given I visit 'http://www.bbc.co.uk/news/world-africa-28755033'
	Then I should see a Datapic
	And I should see the text 'Includes one in the US and six in Mali'

@live
Scenario: Quiz on live

	Given I visit 'http://www.bbc.co.uk/news/magazine-38997118'
	Then I should see a Quiz with text 'Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?'

@live
Scenario: Charts on live

	Given I visit 'http://www.bbc.co.uk/news/uk-politics-39056786'
	Then I should see a chart
	And I should see the text 'Asylum applicants in Sweden'

@live
Scenario: Imageslider on live
	Given I visit 'http://www.bbc.co.uk/news/uk-england-london-38301208'
	Then I should see a imageslider
	And I should see the text 'Christmas rush hour in Oxford Street'

@stage
Scenario: Datapics on stage
	
	Given I visit 'http://www.stage.bbc.co.uk/news/world-africa-39925864?_x_candy_override=https://api.stage.bbc.co.uk&_x_idtfetcher_override=https://www.stage.bbc.co.uk'
	Then I should see a Datapic
	And I should see the text 'Includes one in the US and six in Mali'

@stage
Scenario: Quiz on stage

	Given I visit 'http://www.stage.bbc.co.uk/news/magazine-39925866?_x_candy_override=https://api.stage.bbc.co.uk&_x_idtfetcher_override=https://www.stage.bbc.co.uk'
	Then I should see a Quiz with text 'Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?'

@stage
Scenario: Charts on stage

	Given I visit 'http://www.stage.bbc.co.uk/news/uk-39925868?_x_candy_override=https://api.stage.bbc.co.uk&_x_idtfetcher_override=https://www.stage.bbc.co.uk'
	Then I should see a chart
	And I should see the text 'Asylum applicants in Sweden'

@stage
Scenario: Imageslider on stage
	Given I visit 'http://www.stage.bbc.co.uk/news/uk-39925870?_x_candy_override=https://api.stage.bbc.co.uk&_x_idtfetcher_override=https://www.stage.bbc.co.uk'
	Then I should see a imageslider
	And I should see the text 'Christmas rush hour in Oxford Street'



