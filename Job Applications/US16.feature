Feature: US16: Job application notification
    As an software professional
    I want to get a notification when I apply to a job offer to the app
    so that I'm aware of my actions in the app.

    Scenario: SC23: Application validation
        AC31: The user confirms the application
        Given the user confirmed his/her application to the selected job
        When he presses the 'YES' button
        Then he will get a confirmation success toast about the correct application.

        Examples:
            | Dialog                                       | Button | Display       |
            | Are you sure you want to apply for this job? | Yes    | Success Toast |

        AC32: The user denies the application
        Given the user denied his/her application to the selected job
        When he presses the 'NO' button
        Then he will get a denial toast with error severity about the denied application.

        Examples:
            | Dialog                                       | Button | Display     |
            | Are you sure you want to apply for this job? | No     | Error Toast |
