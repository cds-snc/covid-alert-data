# covid-alert-data

## Data Definitions

1. Active users
  * a. By date
  * b. By date and PT
  * c. By date, PT, and OS
  * d. By date, OS, and app version

2. Exposure notifications received
  * a. By date
  * b. By date and PT
  * c. By date, PT, and OS
  * d. By date, PT, and type [unexposed to exposed vs. exposed to exposed]

3. OTKs entered
  * a. By date
  * b. By date and PT
  * c. By date, PT, and OS
  * d. By date, PT, and state [entered in an unexposed state vs. entered in an exposed state]
  * e. By date, PT, and test/symptom date provided [with date vs. without date]

4. New installs
  * a. By date
  * b. By date and PT
  * c. By date, PT, and OS
  * d. By date, OS, and app version

5. Onboarding progress
  * a. By date and OS
  * b. By date, OS, and app version
  * c. By date and stage [push notifications enabled, GAEN framework enabled]

6. App turned off and on
  * a. By date and state [app turned off vs. app turned on]
  * b. By date and time duration [<1 hour, 2-3 hours, etc.]

7. Manually clearing exposure notifications
  * a. By date
  * b. By date and time duration [<1 hour, 2-3 hours, etc.]
  * c. By date, PT, and OS

8. Number of background checks
  * a. By date and background checks bucket [1-3 per day, 4-6 per day, etc.]
  * b. By date, OS, app version, and background checks bucket
  * c. By date, OS, app version, and success/fail

9. OTKs generated (server-side data)
  * a. By date and by state [generated vs. claimed]
  * b. By date, PT, and state
