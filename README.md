# covid-alert-data

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is indicated by *time_period* in the filename: *metric_name*.*time_period*.csv.
Note: PT = Province/Territory, OS = Operating System.

### Daily active users

For these files, *daily-journalier* have totals for the day, while *weekly-hebdomadaire* and *monthly-mensuel* contain averages for the week/month.

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

| filename | aggregation |
| ------------- |------------- |
| new_installs_a.*time_period*.csv | by date |
| new_installs_b.*time_period*.csv | by date and PT |
| new_installs_c.*time_period*.csv | by date, PT, and OS |
| new_installs_d.*time_period*.csv | by date, OS, and app version |


### Onboarding progress

| filename | aggregation |
| ------------- |------------- |
| onboarded_a.*time_period*.csv | by date and OS |
| onboarded_b.*time_period*.csv | by date, OS, and app version |
| onboarded_c.*time_period*.csv | by date and stage [push notifications enabled, GAEN framework enabled] |


### App turned off and on

| filename | aggregation |
| ------------- |------------- |
| on_off_a.*time_period*.csv | by date and action [turn app off vs. turn app on] |
| Not yet available | by date and time duration [<1 hour, 2-3 hours, etc.] |


### Manually clearing exposure notifications

| filename | aggregation |
| ------------- |------------- |
| clear_exposed_a.*time_period*.csv | by date |
| Not yet available | by date and time duration [<1 hour, 2-3 hours, etc.] |
| Not yet available | by date, PT, and OS |


### Number of background checks

| filename | aggregation |
| ------------- |------------- |
| background_checks_a.*time_period*.csv | by date and background checks bucket [1-3 per day, 4-6 per day, etc.]|
| Not yet available | by date, OS, app version, and background checks bucket |
| Not yet available | by date, OS, app version, and success/fail |


### OTKs generated (server-side data)

| filename | aggregation |
| ------------- |------------- |
| Not yet available | by date and by state [generated vs. claimed] |
| Not yet available | by date, PT, and state |

