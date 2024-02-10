Feature: Verify Rainbow search

    Scenario: 1# Verify the appearance of the search field
        Given user has account on Rainbow
        When user login to rainbow
        Then user should be able to see the search field in the left side above conversations list

    Scenario: 2# Verify the appearance of the selectors
        Given user has account on Rainbow
        And user login to rainbow
        When user enter in the search area 
        Then user should be able to see the selector of People, Bubbles, Text, Channel and Companies

    Scenario: 3# Verify that user can search for Rainbow user successfully
        Given user has account on Rainbow
        And user login to rainbow
        When user enter in the search area
        And user specify 'People' filter
        And user enter 1 character
        Then user should be able to search for any Rainbow user which start with this character

    Scenario: 4# Verify that user can search for any bubble he created or joined successfully
        Given user has account on Rainbow
        And user login to rainbow
        When user enter in the search area
        And user specify 'Bubbles' filter
        And user enter 1 character 
        Then user should be able to search for any bubble he created or joined which start with this character

    Scenario: 5# Verify that user can search for any text he sent/received in conversations successfully
        Given user has account on Rainbow
        And user login to rainbow
        When user enter in the search area
        And user specify 'Text' filter
        And user enter 1 character 
        Then user should be able to search for any text he sent/received in conversations which start with this character

    Scenario: 6# Verify that user can search for any company successfully
        Given user has account on Rainbow
        And user login to rainbow
        When user enter in the search area
        And user specify 'Companies' filter 
        And user enter 1 character
        Then user should be able to search for any company which start with this character


