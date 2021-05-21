# covid-alert-data

The COVID Alert Data repository contains aggregated metrics reported by
the COVID alert system as a whole. The repository is updated nightly with
data which was received the previous day.

This metric data can be used to give insights into how the app is
performing, the progression of OTK distribution and various other
questions. For all metrics reported, for any value < 20 we have replaced
the actual value with the text '<20'.

Note: Due to the privacy settings in the app, in-app metrics don't
necessarily cover all of the phones running the application. The privacy
guarantees mean we don't know if all phones are reporting in, or even
what all phones means. The CSV files should be considered a sampling of
the population of users who's devices have reported back metrics, a lower
bound of the total for each in-app metric.

The values in older files may also increase over time. This can happen
when a phone has had data turned off for a period of days. When it comes
back online it will send metrics to the server, causing the historic values
to increase.

There are three sources of information coming into this repository. The
download numbers from the App Stores, the in-app metrics reported by
the iOS and Android applications and the metrics reported by the
Healthcare portal. As the in-app data does not contain a complete
representation of phones, comparing in-app metrics with Healthcare
Portal data or App Store data should be avoided. In most cases, the
in-app metrics will be lower then the corresponding metric for other
sources.

The metrics are reported over three time period. Daily, Weekly and
Monthly. Note that those time periods can overlap, the Monthly data can
contain days from the previous months last week. Combining numbers
from two time frames will lead to double counting.

In-app metrics were added to the applications around March 28, 2021.
Prior to that time there were no in-app numbers reported.  There have
been subsequent releases to the apps which added new metrics.
Some metrics will have shorter periods of time for which they have data.


## Quick Links

Below are links to some of the high-level metrics for all users of the
app. All of these are summed daily, and dates are in the format YYYY-MM-DD.

- [Cumulative App Store Downloads](csv/daily-journalier/cumulative_downloads_os.daily-journalier.csv)
- [Daily Active Users](csv/daily-journalier/active_users.daily-journalier.csv)
- [Exposure Notifications Received](csv/daily-journalier/exposed.daily-journalier.csv)
- [One Time Keys Entered](csv/daily-journalier/otk.daily-journalier.csv)
- [New Installs](csv/daily-journalier/installs.daily-journalier.csv)

There are many more files in this repository, broken down by
Province/Territory, Operating System, App Version, and other variables.
The full list is provided in the next section.

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is
indicated by *time_period* in the filename: *metric_name*.*time_period*.csv.
All dates are UTC.

Legend:
 * PT = Province/Territory
 * OS = Operating System.
 * NC = Number of Checks
 * ES = Exposure Status
 * FS = Framework Status
 * DP = Date provided
 * NP = Notification Permission

### Active users

For these files, [daily-journalier](csv/daily-journalier) has totals for
the day, while [weekly-hebdomadaire](csv/weekly-hebdomadaire) and
[monthly-mensuel](csv/monthly-mensuel) contain averages for the
week/month.

The active users metric is recorded for phones which have attempted to
do an exposure check. It is recorded once per UTC day.

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
| exposed_pt_es.*time_period*.csv | by date, PT, and exposure status prior to receiving notification |


### OTKs entered

| filename | aggregation |
| ------------- |------------- |
| otk.*time_period*.csv | by date |
| otk_pt.*time_period*.csv | by date and PT |
| otk_pt_os.*time_period*.csv | by date, PT, and OS |
| otk_es.*time_period*.csv | by date and exposure status prior to entering OTK |
| otk_pt_dp.*time_period*.csv | by date, PT, and test/symptom date provided [with date vs. without date] |


### New installs

Province/Territory aggregation is not provided for this metric, since
it is unknown at the time the app is installed.

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
| Not available | |


### Manually clearing exposure notifications

| filename | aggregation |
| ------------- |------------- |
| clear_exposed.*time_period*.csv | by date |
| Not yet available | by date and time duration [<1 hour, 2-3 hours, etc.] |
| Not yet available | by date, PT, and OS |


### Daily background checks

These metrics were initially Android only. The iOS release with these
metrics happened on May 21, 2021. Prior to that the iOS values would
show < 20. *daily_background_check_started* counts all devices that start
the app's background task at least once in a given UTC day.
*daily_background_check_successfully_completed_os* counts
all devices that successfully performed an exposure check in the
background at least once per UTC day. For these files, *daily-journalier*
have totals for the day, while *weekly-hebdomadaire* and *monthly-mensuel*
contain averages for the week/month.

| filename | aggregation |
| ------------- |------------- |
| daily_background_check_started_os.*time_period*.csv | by date and OS |
| daily_background_check_successfully_completed_os.*time_period*.csv | by date and OS |


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

