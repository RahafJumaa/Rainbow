Feature: Verify Share Bubble Link

    Scenario: 1# Verify that the bubble owner can share bubble link succesfully
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        Then user should be able to see 'Share this bubble' option

    Scenario: 2# Verify that the bubble participant cannot share bubble link
        Given user/guest is a participant in a bubble
        When user/guest opens the menu
        Then user should not be able to see 'Share this bubble' option 

    Scenario: #3 Verify 'copy bubble link' button apperance
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        Then user should be able to see 'Bubble parameters' modal 
        And user should be able to see 'Copy the link' button

    Scenario: #4 Verify that bubble owner can copy bubble link successfully
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        And user enables Share this bubble by link
        And user opens the menu
        And user clicks 'Share this bubble' option
        And user clicks 'coppy the link' button
        Then user should be able to see 'The link to your conversation has been copied to the clipboard' message      

    Scenario: #5 Verify reset bubble link icon apperance
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        Then user should be able to see 'Bubble parameters' modal 
        And user should be able to see refresh icon

    Scenario: #6 Verify bubble owner can reset bubble link successfully
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        And user enables Share this bubble by link
        And user opens the menu
        And user clicks 'Share this bubble' option
        And user clicks refresh icon
        Then user should be able to see the link changed 

    Scenario: #7 Verify that the droplist contains 'With everyone' & 'Only with the members of this bubble' options
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        And user enables Share this bubble by link
        And user opens the menu
        And user clicks 'Share this bubble' option
        And user clicks on the droplist
        Then user should be able to see 'With everyone' & 'Only with the members of this bubble' options
    
    Scenario: #8 Verify that everyone can access the bubble when the access set to 'With everyone' option
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        And user enables Share this bubble by link
        And user opens the menu
        And user clicks 'Share this bubble' option
        And user clicks on the 'Copy the link' button
        And user send the link to the guest
        Then guest should be able to access the bubble

    Scenario: #9 Verify the participant only can access the bubble when the access set to 'only with the member in this bubble' opton
        Given user1 and user2 has account on Rainbow
        And user1 creates a bubble
        And user2 is a participant in that bubble
        When user1 opens the menu
        And user1 chooses 'Share this bubble' option
        And user1 enables Share this bubble by link
        And user1 opens the menu
        And user1 clicks 'Share this bubble' option
        And user1 clicks on the droplist
        And user1 selects 'only with the members of this bubble' option
        And user1 clicks on the 'Copy the link' button
        And user1 shares the link with user2
        Then user2 should be able to access the bubble   

    Scenario: #10 Verify that the guest cannot access the bubble via the old link when the bubble owner reset the link
        Given user has account on Rainbow
        And user creates a bubble
        When user opens the menu
        And user chooses 'Share this bubble' option
        And user enables Share this bubble by link
        And user opens the menu
        And user chooses 'Share this bubble' option
        And user shares the link with guest 
        And user reset the link 
        When Guest clicks on the old link 
        Then Guest should not be able to use the old link 
        And Guest should be moved to a window with a 'link no longer valid' message





        

        



        

