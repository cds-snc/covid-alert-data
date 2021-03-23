# covid-alert-data

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is indicated by *time_period* in the filename: *metric_name*.*time_period*.csv.

### Active users

| filename | aggregation |
| ------------- |------------- |
| active_users_a.*time_period*.csv | by date |
| active_users_b.*time_period*.csv | by date and PT |
| active_users_c.*time_period*.csv | by date, PT, and OS |
| active_users_d.*time_period*.csv | by date, OS, and app version |


### Exposure notifications received

| filename | aggregation |
| ------------- |------------- |
| exposed_a.*time_period*.csv | by date |
| exposed_b.*time_period*.csv | by date and PT |
| exposed_c.*time_period*.csv | by date, PT, and OS |
| exposed_d.*time_period*.csv | by date, PT, and app type [unexposed to exposed vs. exposed to exposed] |


### OTKs entered

| filename | aggregation |
| ------------- |------------- |
| otk_a.*time_period*.csv | by date |
| otk_b.*time_period*.csv | by date and PT |
| otk_c.*time_period*.csv | by date, PT, and OS |
| otk_d.*time_period*.csv | by date, OS, and state [entered in an unexposed state vs. entered in an exposed state] |
| otk_e.*time_period*.csv | by date, PT, and test/symptom date provided [with date vs. without date] |


### New installs

  * a. By date
  * b. By date and PT
  * c. By date, PT, and OS
  * d. By date, OS, and app version

### Onboarding progress
  * a. By date and OS
  * b. By date, OS, and app version
  * c. By date and stage [push notifications enabled, GAEN framework enabled]

### App turned off and on
  * a. By date and state [app turned off vs. app turned on]
  * b. By date and time duration [<1 hour, 2-3 hours, etc.]

### Manually clearing exposure notifications
  * a. By date
  * b. By date and time duration [<1 hour, 2-3 hours, etc.]
  * c. By date, PT, and OS

### Number of background checks
  * a. By date and background checks bucket [1-3 per day, 4-6 per day, etc.]
  * b. By date, OS, app version, and background checks bucket
  * c. By date, OS, app version, and success/fail

### OTKs generated (server-side data)
  * a. By date and by state [generated vs. claimed]
  * b. By date, PT, and state
