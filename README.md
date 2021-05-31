[La version française suit.](#données-alerte-covid)

# COVID Alert Data

The COVID Alert Data repository contains aggregated metrics reported by the [COVID Alert](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html) system. The repository is updated nightly with data which was received the previous day.

This data can be used to give insights into how the app is performing, the progression of one-time key (OTK) distribution and various other questions. For all metrics reported, for any value smaller than 20 the actual value is replaced with the text `<20`, in order to align with [Treasury Board guidance on protecting privacy when releasing information about a small number of individuals](https://www.canada.ca/en/treasury-board-secretariat/services/access-information-privacy/access-information-privacy-notices/2020-03-protecting-privacy-releasing-information-about-small-number-individuals.html).

For additional privacy information, see [Appendix B of the COVID Alert Privacy Assessment: COVID Alert App Metrics](https://github.com/cds-snc/covid-alert-documentation/blob/main/COVIDAlertPrivacyAssessment.md#appendix-b-covid-alert-app-metrics). For more background information on COVID Alert, see the [COVID Alert Documentation Repository](https://github.com/cds-snc/covid-alert-documentation) or visit the [COVID Alert page on Canada.ca](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html).

### Data coverage

Due to the app’s [privacy-preserving design](https://github.com/cds-snc/covid-alert-documentation/blob/main/COVIDAlertPrivacyAssessment.md#5-how-does-the-covid-alert-app-work), in-app metrics don’t necessarily cover all of the phones running the application. **Users with older versions of COVID Alert that predate the introduction of in-app metrics also do not appear in this data**. The app’s privacy-preserving design means that it isn’t possible to know if all phones are reporting in, or even the exact number of phones using the app. The CSV files contained in this repository should be considered a sampling of the population of users whose devices have reported back metrics, a lower bound of the total for each in-app metric.

The values displayed for older time periods may also increase over time. This can happen when a phone has had data turned off for a period of several days. When it comes back online it will send metrics to the server, causing the historic values to increase.

### Data sources

There are three sources of information coming into this repository:

*   Download numbers from the Apple and Google App Stores
*   In-app metrics reported by [the iOS and Android applications](https://github.com/cds-snc/covid-alert-app)
*   Metrics reported by [the COVID Alert key server](https://github.com/cds-snc/covid-alert-server).

As the in-app data does not contain a complete representation of phones, comparing in-app metrics directly with key server data or App Store data should be avoided. In most cases, the in-app metrics will be lower than the corresponding metric for other sources.

### Time periods

The metrics are reported over three time periods: Daily, Weekly and Monthly. **Dates provided for Weekly and Monthly data reflect the last day of that time period** (for example, Monthly data for April 2021 is listed as `2021-04-30`). Note that combining numbers from two time frames can lead to double-counting of overlapping time ranges; for example, the Monthly data can contain days from the previous month’s last week in the Weekly data.

In-app metrics were added to the COVID Alert service in February 2021. Prior to that time there were no in-app numbers reported. There have been subsequent releases to the app which added new metrics or corrected bugs in previously-introduced metrics. Some metrics will have shorter periods of time for which they have data. See the [Changelog](#changelog) for more details.

The CSV files use a structure based on the [Tidy data standard](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html#tidy-data).

## Context and Limitations

*   This repository only includes data from the [three data sources listed above](#data-sources). 
*   **Due to COVID Alert’s [privacy-preserving design](https://github.com/cds-snc/covid-alert-documentation/blob/main/COVIDAlertPrivacyAssessment.md#5-how-does-the-covid-alert-app-work), in-app metrics are collected in aggregate,** meaning that (a) in-app metrics are estimates, and (b) data cannot be connected to specific devices. It is not possible to comment on changes in the behaviour of specific devices or sets of devices. No other information is available directly from the app or exposure notification framework is available.
*   **In-app metrics data should be considered a subset of the overall number of COVID Alert users**. Data originating from in-app metrics represents COVID Alert users that are running a version of the app that includes the in-app metrics feature, and whose devices are successfully performing background checks. 
*   **In-app metrics data is only available as of February 2021, when metrics were introduced into the app**. Additional fixes were also made throughout the following months. Prior to this time, only server-side metrics and App Store download metrics are available. 
*   **Start dates for CSV files in this repository may vary**, based on when technical improvements or fixes were published for specific metrics.				
*   **In-app metrics data does not necessarily appear on GitHub on the date it is collected.** As a result, historic data may change over time. This is because a device needs to be connected to data or Wi-Fi to send metrics data to the server. If a phone is disconnected from data or Wi-Fi, and then reconnects, the app may send metric information for the days it was offline.
*   **Updates and technical improvements made to the COVID Alert app may also cause the data arriving in this repository to change over time.** See the [Changelog](#changelog) below for details on app or repository changes that may be reflected in the data. 
*   **Server-side “OTKs claimed” and in-app “OTKs entered” are not equal.** This is expected, and is due some users still running versions of COVID Alert that predate the metrics feature. Users with older versions of COVID Alert can still successfully enter OTKs into their phones in the case of a positive diagnosis, which will increase the server-side “OTKs claimed” metric, but not the in-app “OTKs entered” metric.
*   **The “one-time keys used” total [listed on Canada.ca](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html#a6), which originates from server-side OTK data, is slightly higher than the server-side “OTKs claimed” data in the metrics data repository.** This is expected, and is due to server-side metric logging by date being rolled out several months after the app was launched, in early October 2020. 
*   **COVID Alert is one part of Canada’s COVID-19 response.**
    *   For broader social and public health data, see the [Public Health Agency of Canada’s COVID-19 data visualization website](https://health-infobase.canada.ca/covid-19/), which includes source data in CSV format, or provincial and territorial public health websites.
    *   For data on mobile phone adoption in Canada, see Statistics Canada’s [2018 data on smartphone use](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2210011501).

## Quick Links

Below are links to some of the high-level metrics for all users of the app. All of these are summed daily, and dates are in the format `YYYY-MM-DD`.

- [Cumulative App Store Downloads](csv/daily-journalier/cumulative_downloads_os.daily-journalier.csv)
- [Daily Active Users](csv/daily-journalier/active_users.daily-journalier.csv)
- [Exposure Notifications Received](csv/daily-journalier/exposed.daily-journalier.csv)
- [One Time Keys Entered](csv/daily-journalier/otk.daily-journalier.csv)
- [New Installs](csv/daily-journalier/installs.daily-journalier.csv)

There are many more files in this repository, broken down by province/territory, operating system, app version, and other variables. The full list is provided in the next section.

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is indicated by *time_period* in the filename: *metric_name*.*time_period*.csv. All dates are UTC.

**Legend:**

 * `PT` = Province/Territory (selected by the user on app setup)
 * `OS` = Operating System (Android or iOS)
 * `NC` = Number of Checks (number of background checks in the specified time period)
 * `ES` = Exposure Status (if the user’s app has been set into an “exposed”
   state based on keys retrieved from the server, or if it is in the default “monitoring” state)
 * `FS` = Framework Status (status of the GAEN framework, if it is enabled
   or disabled)
 * `DP` = Date provided (if the “date of symptom onset” or “date of test” was provided when submitting an OTK)
 * `NP` = Notification Permission (if the operating system’s notification permission was enabled for COVID Alert during onboarding)

Column headings and keywords are written in English and French, separated by hyphens. Accented characters are not used in order to maximize CSV file compatibility across systems.


### Active users

The active users metric indicates the number of phones which have attempted to do an exposure check. It is recorded once per UTC day.

For these files, [daily-journalier](csv/daily-journalier) has totals for the day, while [weekly-hebdomadaire](csv/weekly-hebdomadaire) and [monthly-mensuel](csv/monthly-mensuel) contain averages for the week/month.

| filename | aggregation |
| ------------- |------------- |
| active_users.*time_period*.csv | by date |
| active_users_pt.*time_period*.csv | by date and PT |
| active_users_os.*time_period*.csv | by date and OS |
| active_users_pt_os.*time_period*.csv | by date, PT, and OS |
| active_users_os_av.*time_period*.csv | by date, OS, and app version |


### Exposure notifications received

This indicates the number of exposure notifications (“You’ve been exposed in the last 14 days”) received by users’ devices, as measured by the app (a) switching from the default “monitoring” state to the “exposed” state, or (b) recording another exposure when already in the “exposed” state.

*   Users who receive an exposure notification while running a version of the app from before in-app metrics were introduced do not appear in this data.
*   Users can receive multiple exposure notifications to the same device; these subsequent exposure notifications are included in this data.
*   _exposed_es_ and _exposed_pt_es_ indicate the number of devices that received an exposure notification based on the current state of the app (for example, for users who receive multiple notifications within the same “exposed” time period).

| filename | aggregation |
| ------------- |------------- |
| exposed.*time_period*.csv | by date |
| exposed_pt.*time_period*.csv | by date and PT |
| exposed_pt_os.*time_period*.csv | by date, PT, and OS |
| exposed_pt_es.*time_period*.csv | by date, PT, and exposure status prior to receiving notification |
| exposed_es.*time_period*.csv | by date and exposure status prior to receiving notification |


### One-time keys entered

This indicates the number of users who entered a one-time key (OTK), confirming a positive COVID diagnosis within the app and initiating exposure notification alerts to phones that they were in contact with. This is the in-app equivalent of the [server-side OTKs entered metric](#otks-claimed-server-side-data).

*   These figures are smaller than the [OTKs entered into the app according to the server](#otks-claimed-server-side-data) (which gives a more accurate overall total).
    *   These differences are because in-app figures don’t include OTKs claimed in older versions of the app, before the in-app metric was introduced; the app didn’t start recording this data until March 28.
    *   If a user enters an OTK within an earlier version of the app that predates in-app metrics, it will appear in the server-side data but not these files.
*   _otk_es_ indicates the number of people who enter an OTK (confirming a positive COVID diagnosis) while either in the default “monitoring” state, or in the “exposed” state after having previously received an exposure notification.

| filename | aggregation |
| ------------- |------------- |
| otk.*time_period*.csv | by date |
| otk_pt.*time_period*.csv | by date and PT |
| otk_pt_os.*time_period*.csv | by date, PT, and OS |
| otk_es.*time_period*.csv | by date and exposure status prior to entering OTK |
| otk_pt_dp.*time_period*.csv | by date, PT, and test/symptom date provided [with date vs. without date] |


### New installs

This indicates new installs or reinstalls of COVID Alert, triggered at the beginning of the onboarding process after the app is launched.

*   Province/Territory aggregation is not provided for this metric, since it is unknown at the time the app is installed.

| filename | aggregation |
| ------------- |------------- |
| installs.*time_period*.csv | by date |
| installs_os.*time_period*.csv | by date and OS |
| installs_os_av.*time_period*.csv | by date, OS, and app version |


### Onboarding progress

This indicates the number of users who complete or drop off onboarding at different stages.

*   In order for COVID Alert to function properly, users must enable the GAEN framework via an operating system prompt (normally, when they first install and run the app, or via their phone’s operating system settings screen) as well as giving COVID Alert permission to display notifications.

| filename | aggregation |
| ------------- |------------- |
| onboarded_os.*time_period*.csv | by date and OS |
| onboarded_os_av.*time_period*.csv | by date, OS, and app version |
| onboarded_fe_np.*time_period*.csv | by date, GAEN framework enabled, and if notifications permission is granted |


### App turned off and on

This indicates how frequently the app’s [“on/off” feature](https://www.canada.ca/en/health-canada/news/2020/12/covid-alert-app-updated-to-serve-canadians-better.html) is used.

| filename | aggregation |
| ------------- |------------- |
| Not yet available | |


### Manually clearing exposure notifications

This indicates how frequently the app’s [“manually clear exposure notifications” feature](https://www.canada.ca/en/health-canada/news/2020/12/covid-alert-app-updated-to-serve-canadians-better.html) is used.

| filename | aggregation |
| ------------- |------------- |
| clear_exposed.*time_period*.csv | by date |
| Not yet available | by date and time duration [<1 hour, 2-3 hours, etc.] |
| Not yet available | by date, PT, and OS |


### Daily background checks

This indicates the number of devices that are starting and successfully completing background checks, at least once per UTC day.

*   These metrics were initially Android only. The iOS release with these metrics happened on May 21, 2021. Prior to that the iOS values would show `<20`.
*   _daily_background_check_started_ counts all devices that start the app’s background task at least once in a given UTC day.
*   _daily_background_check_successfully_completed_ counts all devices that successfully performed an exposure check in the background at least once per UTC day.

For these files, *daily-journalier* have totals for the day, while *weekly-hebdomadaire* and *monthly-mensuel* contain averages for the week/month.

| filename | aggregation |
| ------------- |------------- |
| daily_background_check_started_os.*time_period*.csv | by date and OS |
| daily_background_check_successfully_completed_os.*time_period*.csv | by date and OS |


### Number of background checks

This indicates the total number of background checks on a given device completed in one day, grouped into ranges.

*   The number of background checks that take place on a given device varies based on a number of factors (battery level, network connectivity, etc.).
*   Devices which are unable to conduct background checks are unable to send metric events. As a result, these devices do not appear in this data and the “number of checks” count for 0 is always zero devices (displayed as `<20`).

| filename | aggregation |
| ------------- |------------- |
| background_checks_nc.*time_period*.csv | by date and number of background checks [1-3 per day, 4-6 per day, etc.]|
| background_checks_nc_os.*time_period*.csv | by date, number of checks, and OS |
| background_checks_nc_os_av.*time_period*.csv | by date, number of checks, OS, and app version |
| Not yet available | by date, OS, app version, and success/fail |


### OTKs generated (server-side data)

This indicates the number of one-time keys generated by provincial/territorial public health staff, or requested via provincial/territorial IT systems.

*   In some cases, OTKs may have been generated during training or testing by public health staff; the number of OTKs shared with COVID-positive individuals would be slightly lower as a result.
*   Server-side OTK data was collected from October 2020 onwards.

| filename | aggregation |
| ------------- |------------- |
| server_otk_generated.*time_period*.csv | by date |
| server_otk_generated_pt.*time_period*.csv | by date and PT |


### OTKs claimed (server-side data)

This indicates the number of one-time keys claimed via the app by COVID Alert users with positive COVID diagnoses. This is the server-side equivalent of [the in-app OTKs entered metric above](#one-time-keys-entered).

*   Server-side OTK data was collected from October 2020 onwards. The total (all-time) number of OTKs claimed is [published on Canada.ca under “One-time keys used”](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html#a6).
*   698 OTKs were claimed between the launch of the app (July 31, 2020) and the introduction of server-side OTK data collection (October 3, 2020). These 698 OTKs are included in [the Canada.ca total](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html#a6) but not the files below.

| filename | aggregation |
| ------------- |------------- |
| server_otk_claimed.*time_period*.csv | by date |
| server_otk_claimed_pt.*time_period*.csv | by date and PT |


### Downloads

This indicates the number of downloads (per time period, and cumulatively) of COVID Alert, as displayed by the Apple and Google app stores. This data is [also available on the Ontario Data Catalogue](https://data.ontario.ca/dataset/covid-alert-impact-data).

| filename | aggregation |
| ------------- |------------- |
| downloads.*time_period*.csv | by date |
| downloads_os.*time_period*.csv | by date and OS |
| cumulative_downloads.*time_period*.csv | by date |
| cumulative_downloads_os.*time_period*.csv | by date and OS |

## Changelog

Dates below indicate when changes were made to COVID Alert that affect the data displayed in this repository. Note that not all app updates are listed here (for example, if updates are unrelated to metrics functionality).

Changes to reported metrics in this repository typically appear several days after a new app update is published. Users’ phones update to the latest published version over 1-3 days (if automatic updates are enabled), and data begins appearing in this repository the following day.



*   **May 25, 2021**
    *   Additional background information added to this Readme file
*   **May 21, 2021**
    *   Fixed metrics destination for _daily_background_check_started_ and _daily_background_check_successfully_completed_ on iOS devices
*   **May 19, 2021**
    *   _on_off_ac_ removed (not currently updated)
*   **May 18, 2021**
    *   App version 1.2.9 published
        *   Updated _active_users_ metric that runs at the start of the background check, and if the app is opened manually
        *   _daily_background_check_started_ and _daily_background_check_successfully_completed_ metrics initially added for iOS devices
*   **May 17, 2021**
    *   Repository license updated
*   **April 26, 2021**
    *   _daily_background_check_started_ and _daily_background_check_successfully_completed_ metrics added to this data repository
*   **April 23, 2021**
    *   Semantic app version numbers are displayed in this repository, instead of build numbers
*   **April 22, 2021**
    *   App version 1.2.8 published
        *   Additional reliability improvements for in-app metrics on Android devices
*   **April 21, 2021**
    *   Downloads and cumulative downloads are added to this repository
*   **April 15, 2021**
    *   Server-side OTK metrics are added to this repository
*   **April 9, 2021**
    *   App version 1.2.7 published
        *   Attempted fixes for _on_off_ac_ (on/off feature metric)
        *   Improved internal state handling
*   **April 6, 2021**
    *   App version 1.2.6 published
        *   Additional reliability improvements for in-app metrics
        *   Fixes for _exposed_ metric handling (exposure notifications received)
        *   Multiple exposure notifications received are now counted in _exposed_ data
*   **March 30, 2021**
    *   App version 1.2.5 published
        *   Reliability improvements for in-app metrics
*   **March 25, 2021**
    *   App version 1.2.4 published
        *   Fixes for _otk_ metric handling (OTKs entered)
        *   _daily_background_check_started_ and _daily_background_check_successfully_completed_ metrics added for Android devices
*   **March 23, 2021**
    *   Daily/weekly/monthly time period subdirectories are generated
*   **March 22, 2021**
    *   Additional CSV files are generated
*   **March 19, 2021**
    *   This data repository is created; initial test CSV files are generated
*   **March 4, 2021**
    *   App version 1.2.2 published
        *   Further updates to app and server communications
*   **February 26, 2021**
    *   App version 1.2.1 published
        *   Improving how often the app communicates metric events to the server
*   **February 9, 2021**
    *   App version 1.2.0 published
        *   Initial launch of [in-app metrics](https://www.canada.ca/en/health-canada/news/2021/02/covid-alert-updated-to-help-evaluate-its-effectiveness-in-reducing-the-spread-of-covid-19.html)
        *   Added one-time notification to inform people of new metrics being collected and changes to the [privacy notice](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert/privacy-policy.html)


# Données Alerte COVID

_Traduction à venir._
