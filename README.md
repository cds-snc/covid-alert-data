# covid-alert-data

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is indicated by *time_period* in the filename: *metric_name*.*time_period*.csv.
Note: PT = Province/Territory, OS = Operating System.

### Daily active users

For these files, *daily-journalier* have totals for the day, while *weekly-hebdomadaire* and *monthly-mensuel* contain averages for the week/month.

| filename | aggregation |
| ------------- |------------- |
| active_users.*time_period*.csv | by date |
| active_users_pt.*time_period*.csv | by date and PT |
| active_users_os.*time_period*.csv | by date and OS |
| active_users_pt_os.*time_period*.csv | by date, PT, and OS |
| active_users_os_av.*time_period*.csv | by date, OS, and app version |


### Exposure notifications received

| filename | aggregation |
| ------------- |------------- |
| exposed.*time_period*.csv | by date |
| exposed_pt.*time_period*.csv | by date and PT |
| exposed_pt_os.*time_period*.csv | by date, PT, and OS |
| exposed_pt_es.*time_period*.csv | by date, PT, and exposure status prior to recieving notification |


### OTKs entered

| filename | aggregation |
| ------------- |------------- |
| otk.*time_period*.csv | by date |
| otk_pt.*time_period*.csv | by date and PT |
| otk_pt_os.*time_period*.csv | by date, PT, and OS |
| otk_os_es.*time_period*.csv | by date, OS, and exposure status prior to entering OTK |
| otk_pt_dp.*time_period*.csv | by date, PT, and test/symptom date provided [with date vs. without date] |


### New installs

| filename | aggregation |
| ------------- |------------- |
| installs.*time_period*.csv | by date |
| installs_pt.*time_period*.csv | by date and PT |
| installs_pt_os.*time_period*.csv | by date, PT, and OS |
| installs_os_av.*time_period*.csv | by date, OS, and app version |


### Onboarding progress

| filename | aggregation |
| ------------- |------------- |
| onboarded_os.*time_period*.csv | by date and OS |
| onboarded_os_av.*time_period*.csv | by date, OS, and app version |
| onboarded_fe_pn.*time_period*.csv | by date, GAEN framework enabled, and if push notifications are enabled |


### App turned off and on

| filename | aggregation |
| ------------- |------------- |
| on_off_ac.*time_period*.csv | by date and action [turn app off vs. turn app on] |
| Not yet available | by date and time duration [<1 hour, 2-3 hours, etc.] |


### Manually clearing exposure notifications

| filename | aggregation |
| ------------- |------------- |
| clear_exposed.*time_period*.csv | by date |
| Not yet available | by date and time duration [<1 hour, 2-3 hours, etc.] |
| Not yet available | by date, PT, and OS |


### Number of background checks

| filename | aggregation |
| ------------- |------------- |
| background_checks_nc.*time_period*.csv | by date and background checks bucket [1-3 per day, 4-6 per day, etc.]|
| Not yet available | by date, OS, app version, and background checks bucket |
| Not yet available | by date, OS, app version, and success/fail |


### OTKs generated (server-side data)

| filename | aggregation |
| ------------- |------------- |
| Not yet available | by date and by state [generated vs. claimed] |
| Not yet available | by date, PT, and state |

