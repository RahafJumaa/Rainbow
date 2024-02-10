Feature: Verify Rainbow Guest

    Scenario: 1# Verify that user will navigate to a screen with 2 entries Rainbow user & Guest by using the bubble link
        Given user has account on Rainbow
        And user creates a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When user/guest clicks on the link
        Then user/guest should be navigated to a screen with 2 entries Rainbow user & Guest
        And rainbow user entry should contains options to move to login page
        And guest entry should ask for first name & last name to continue as a guest

    Scenario: 2# Verify that Join button is disabled when first name & last name entries are empty
        Given user has account on Rainbow
        And user creates a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When guest clicks on the link
        And guest left the 'first name' & 'last name' entries empty
        Then 'Join' button should be disabled

    Scenario: 3# Verify that guest will navigate to second screen after clicking on 'Join' button
        Given user has account on Rainbow
        And user creates a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When guest clicks on the link
        And guest fills the 'first name' & 'last name' entries
        And guest clicks on 'Join' button
        Then guest should be navigated to second screen
        And a button with text 'Join conference' should be visible

    Scenario: 4# Verify that camera & microphone will turned on by default if the user authorized his device
        Given user has account on Rainbow
        And user creates a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When guest clicks on the link
        And guest fills the first name & last name entries
        And guest authorize his device 
        And guest clicks on 'Join' button
        Then camera & microphone should turned on by default

    Scenario: 5# Verify that guest can turn off camera & microphone
        Given user has account on Rainbow
        And user create a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When guest clicks on the link
        And guest fills the first name & last name entries
        And guest clicks on 'Join' button
        And guest clicks on toggle buttons
        Then camera & microphone should be turned off

    Scenario: 6# Verify that guest will be directed to the conference call if the bubble has an active conference
        Given user has account on Rainbow
        And user creates a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When guest clicks on the link
        And guest fills the first name & last name entries
        And guest clicks on 'Join' button
        And the bubble has an active conference
        And guest click on 'Join conference' button
        Then guest should be directed to the conference call

    Scenario: 7# Verify that guest will be directed to the bubble thread if the conference is no active
        Given user has account on Rainbow
        And user creates a bubble
        And user enables Share this bubble by link
        And user shares the bubble link
        When guest clicks on the link
        And guest fills the first name & last name entries
        And guest clicks on 'Join' button
        And the conference is no active
        And guest clicks on 'Join conference' button
        Then guest should be directed to the bubble thread










