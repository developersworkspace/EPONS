@TrackIt:26037
Feature: Navigation
	In order to browse the site
	As a user
	I want to use the navigation menus

@TrackIt:26038
Scenario: Unauthenticated User
	Given I open a new browser session in all browsers
	And I am an unauthenticated user
	When I browse to "/Home/Index"
	Then I should be redirected to "/Account/Login" 

@TrackIt:26040
Scenario: Authenticated User
	Given I open a new browser session in all browsers 
	And I am signed in as "Yoda"
	Then I should be redirected to "/Administration/Users"
	