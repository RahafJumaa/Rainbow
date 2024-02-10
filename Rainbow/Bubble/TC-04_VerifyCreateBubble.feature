Feature: Verify Create Bubble 

    Scenario: 1# Verify that the user can create bubble from bubbles tap
        Given user has account on Rainbow
        When user navigates to 'Bubbles' tap
        And clicks on 'Create a bubble' button
        And enters a valid name in the 'BUBBLE NAME' field
        And clicks on 'Next' button
        And clicks on 'Next' button
        And clicks on 'Create' button
        Then user should be able to see the new bubble added to the 'Bubbles' tap
