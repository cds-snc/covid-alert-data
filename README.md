# covid-alert-data

The data in this repository is updated daily.

## Quick Links

Below are links to some of the high-level metrics for all users of the app. All of these are summed daily, and dates are in the format YYYY-MM-DD.

- [Cumulative App Store Downloads](csv/daily-journalier/cumulative_downloads_os.daily-journalier.csv)
- [Daily Active Users](csv/daily-journalier/active_users.daily-journalier.csv)
- [Exposure Notifications Recieved](csv/daily-journalier/exposed.daily-journalier.csv)
- [One Time Keys Entered](csv/daily-journalier/otk.daily-journalier.csv)
- [New Installs](csv/daily-journalier/installs.daily-journalier.csv)

There are many more files in this repository, broken down by Province/Territory, Operating System, App Version, and other variables. The full list is provided in the next section.

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is indicated by *time_period* in the filename: *metric_name*.*time_period*.csv.
Note: PT = Province/Territory, OS = Operating System. All dates are in UTC.

### Daily active users

For these files, *daily-journalier* have totals for the day, while *weekly-hebdomadaire* and *monthly-mensuel* contain averages for the week/month.

| filename | aggregation |
| ------------- |------------- |
| active_users.*time_period*.csv | by date |
| active_users_pt.*time_period*.csv | by date and PT |
| active_users_os.*time_period*.csv | by date and OS |
| active_users_pt_os.*time_period*.csv | by date, PT, and OS |
| active_users_os_av.*time_period*.csv | by date, OS, and app version |


### All users

This metric is currently Android only. It includes all devices that are recieving updates, including those where background checks are not being performed successfully. For these files, *daily-journalier* have totals for the day, while *weekly-hebdomadaire* and *monthly-mensuel* contain averages for the week/month. 

| filename | aggregation |
| ------------- |------------- |
| all_users_os.*time_period*.csv | by date and OS |


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
| otk_es.*time_period*.csv | by date and exposure status prior to entering OTK |
| otk_pt_dp.*time_period*.csv | by date, PT, and test/symptom date provided [with date vs. without date] |


### New installs

Province/Territory aggregation is not provided for this metric, since it is unknown at the time the app is installed.

| filename | aggregation |
| ------------- |------------- |
| installs.*time_period*.csv | by date |
| installs_os.*time_period*.csv | by date and OS |
| installs_os_av.*time_period*.csv | by date, OS, and app version |


### Onboarding progress

| filename | aggregation |
| ------------- |------------- |
| onboarded_os.*time_period*.csv | by date and OS |
| onboarded_os_av.*time_period*.csv | by date, OS, and app version |
| onboarded_fe_np.*time_period*.csv | by date, GAEN framework enabled, and if notifications permission is granted |


### App turned off and on

| filename | aggregation |
| ------------- |------------- |
| Not yet available | by date and action [turn app off vs. turn app on] |
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
| background_checks_nc.*time_period*.csv | by date and number of background checks [1-3 per day, 4-6 per day, etc.]|
| background_checks_nc_os.*time_period*.csv | by date, number of checks, and OS |
| background_checks_nc_os_av.*time_period*.csv | by date, number of checks, OS, and app version |
| Not yet available | by date, OS, app version, and success/fail |


### OTKs generated (server-side data)

| filename | aggregation |
| ------------- |------------- |
| server_otk_generated.*time_period*.csv | by date |
| server_otk_generated_pt.*time_period*.csv | by date and PT |


### OTKs claimed (server-side data)

| filename | aggregation |
| ------------- |------------- |
| server_otk_claimed.*time_period*.csv | by date |
| server_otk_claimed_pt.*time_period*.csv | by date and PT |


### Downloads

| filename | aggregation |
| ------------- |------------- |
| downloads.*time_period*.csv | by date |
| downloads_os.*time_period*.csv | by date and OS |
| cumulative_downloads.*time_period*.csv | by date |
| cumulative_downloads_os.*time_period*.csv | by date and OS |
