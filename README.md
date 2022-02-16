[La version française suit.](#données-dalerte-covid)

# COVID Alert Data

The COVID Alert Data repository contains aggregated metrics reported by the [COVID Alert](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html) system. The repository is updated nightly with data, which was received the previous day.

This data can be used to give insights into how the app is performing, the progression of one-time key (OTK) distribution and various other questions. For metrics with fewer than 20 data points, the value is replaced with the text `<20`, in order to align with [Treasury Board guidance on protecting privacy when releasing information about a small number of individuals](https://www.canada.ca/en/treasury-board-secretariat/services/access-information-privacy/access-information-privacy-notices/2020-03-protecting-privacy-releasing-information-about-small-number-individuals.html).

For additional privacy information, see [Appendix B of the COVID Alert Privacy Assessment: COVID Alert App Metrics](https://github.com/cds-snc/covid-alert-documentation/blob/main/COVIDAlertPrivacyAssessment.md#appendix-b-covid-alert-app-metrics). For more background information on COVID Alert, see the [COVID Alert Documentation Repository](https://github.com/cds-snc/covid-alert-documentation) or visit the [COVID Alert page on Canada.ca](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html).

### Data coverage

Due to the app’s [privacy-preserving design](https://github.com/cds-snc/covid-alert-documentation/blob/main/COVIDAlertPrivacyAssessment.md#5-how-does-the-covid-alert-app-work), in-app metrics don’t necessarily represent all of the phones running the application. The app’s privacy-preserving design means that it isn’t possible to know if all phones are reporting in. **Users with older versions of COVID Alert that predate the introduction of in-app metrics on February 25, 2021 also do not appear in this data**. As a result, the CSV files pertaining to in-app metrics contained in this repository should be considered a sampling of the full population of COVID Alert users.

The values displayed for older time periods may also increase over time. This can happen when a phone has had data turned off for a period of several days. When it comes back online it will send metrics to the server, causing the historic values to increase.

### Data sources

There are three sources of data coming into this repository:

 * In-app metrics reported by [the iOS and Android applications](https://github.com/cds-snc/covid-alert-app);
 * Metrics reported by [the COVID Alert key server](https://github.com/cds-snc/covid-alert-server); and
 * Download numbers from the Apple and Google App Stores.

As the in-app data does not contain a complete representation of phones, comparing in-app metrics directly with key server data or App Store data should be avoided. In most cases, the in-app metrics will be lower than the corresponding metric for other sources.

### Time periods

The metrics are reported over three time periods: Daily, Weekly and Monthly. **Dates provided for Weekly and Monthly data reflect the last day of that time period** (for example, Monthly data for April 2021 is listed as `2021-04-30`). Note that combining numbers from two time frames can lead to double-counting of overlapping time ranges; for example, the Monthly data can contain days from the previous month’s last week in the Weekly data.

In-app metrics were added to the COVID Alert service on February 25, 2021. Prior to that time there were no in-app numbers reported. There have been subsequent releases to the app that added new metrics or corrected bugs in previously-introduced metrics. Some metrics will have shorter periods of time for which they have data. See the [Changelog](https://github.com/cds-snc/covid-alert-data#changelog) for more details.

The CSV files use a structure based on the [Tidy data standard](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html#tidy-data). These files are automatically updated each day by the [COVID Alert Metrics ETL repository](https://github.com/cds-snc/covid-alert-metrics-etl).

## Context and Limitations

 * This repository includes data from the [three data sources listed above](https://github.com/cds-snc/covid-alert-data#data-sources).
 * **Due to COVID Alert’s [privacy-preserving design](https://github.com/cds-snc/covid-alert-documentation/blob/main/COVIDAlertPrivacyAssessment.md#5-how-does-the-covid-alert-app-work), in-app metrics are collected in aggregate,** meaning that (a) in-app metrics are estimates, and (b) data cannot be connected to specific devices. It is not possible to comment on changes in the behaviour of specific devices or sets of devices. No other information is available directly from the app or exposure notification framework.
 * **In-app metrics data should be considered a subset of the overall number of COVID Alert users**. Data originating from in-app metrics represents COVID Alert users that are running a version of the app that includes the in-app metrics feature, and whose devices are successfully performing background checks.
 * **In-app metrics data is only available as of February 25, 2021, when metrics were launched with a new version of the app**. Additional fixes were also made throughout the following months. Server-side metrics data are available as of October 3, 2020. Prior to the addition of server and in-app metrics, only App Store download metrics were available.
 * **Start dates for CSV files in this repository vary**, based on when technical improvements or fixes were published for specific metrics.
 * **In-app metrics data does not necessarily appear on GitHub on the date it is collected.** As a result, historic data may change over time. This is because a device needs to be connected to data or Wi-Fi to send metrics data to the server. If a phone is disconnected from data or Wi-Fi, and then reconnects, the app may send metric information for the days it was offline.
 * Notable jumps or reductions in data counts for certain metrics (for example OTKs or notifications) on specific dates may be attributed to technical changes with the data.
   * See the [Changelog](https://github.com/cds-snc/covid-alert-data#changelog) below for details on app or repository changes that may be reflected in the data.
   * **If you have a question about the data please file an issue in the [GitHub issue tracker](https://github.com/cds-snc/covid-alert-data/issues/new).**
 * Data for the number of OTKs claimed on the server (the server-side otk_claimed metric) and the number of OTKs entered into the app (the in-app otk metric) are not equal. This is expected, and is due to some users still running versions of COVID Alert that predate the metrics feature. Users with older versions of COVID Alert can still successfully enter OTKs into their phones in the case of a positive diagnosis, which will increase the server-side otk_claimed metric, but not the in-app otk metric.
 * The "one-time keys entered" total [listed on Canada.ca](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html#a6), which originates from server-side OTK data, is slightly higher than the server-side otk_claimed data in the metrics data repository. This is expected, and is due to server-side metric logging by date being rolled out several months after the app was launched, in early October 3, 2020.
 * **COVID Alert is one part of Canada’s COVID-19 response.**
   * For broader social and public health data, see the [Public Health Agency of Canada’s COVID-19 data visualization website](https://health-infobase.canada.ca/covid-19/), which includes source data in CSV format, or provincial and territorial public health websites.
   * For data on mobile phone adoption in Canada, see Statistics Canada’s [2018 data on smartphone use](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2210011501&request_locale=en).


## Quick Links

Below are links to some of the high-level metrics for all users of the app. All of these are summed daily, and dates are in the format `YYYY-MM-DD`.

 * [Cumulative App Store Downloads](csv/daily-journalier/cumulative_downloads_os.daily-journalier.csv)
 * [Daily Active Users](csv/daily-journalier/active_users.daily-journalier.csv)
 * [Exposure Notifications Received](csv/daily-journalier/exposed.daily-journalier.csv)
 * [One Time Keys Entered](csv/daily-journalier/otk.daily-journalier.csv)
 * [New Installs](csv/daily-journalier/installs.daily-journalier.csv)

There are many more files in this repository, broken down by province/territory, operating system, app version, and other variables. The full list is provided in the next section.

## Data Definitions

Each metric is available aggregated daily, weekly, and monthly. This is indicated by *time_period* in the filename: *metric_name.time_period.csv*. All dates are UTC.

The following acronyms are used in CSV filenames to indicate what data the file contains:

 * `PT` = Province/Territory (selected by the user on app setup)
 * `OS` = Operating System (Android or iOS)
 * `NC` = Number of Checks (number of background checks in the specified time period)
 * `ES` = Exposure Status (if the user’s app has been set into an "exposed" state based on keys retrieved from the server, or if it is in the default "monitoring" state)
 * `FS` = Framework Status (status of the GAEN framework, if it is enabled or disabled)
 * `DP` = Date provided (if the "date of symptom onset" or "date of test" was provided when submitting an OTK)
 * `NP` = Notification Permission (if the operating system’s notification permission was enabled for COVID Alert during onboarding)

Within the CSV files, column headings and keywords are written in English and French, separated by hyphens. Accented characters are not used in order to maximize CSV file compatibility across systems.

## In-app metrics reported by the [iOS and Android applications](https://github.com/cds-snc/covid-alert-app) (listed alphabetically)

### Active users

The active users metric indicates the number of phones which have attempted to do an exposure check, to determine if the user has been near another user who tested positive for COVID-19 and entered a one-time key. This metric records all devices that attempt an exposure check, regardless of whether the app is running in the foreground (eg. when the app is open open) or in the background at the time. It is recorded once per UTC day.

If the exposure check indicates the user has been near someone who entered an OTK, the app changes to the "exposed state" and the user receives an exposure notification.

Note that the active users metric on iOS, in particular, is known to be lower than expected. Outside of the considerations mentioned in Data Coverage above, there is an issue where ActiveUser is not being reported in all cases on iOS. This results in the *active_users* metric being lower than the *daily_background_check_successfully_completed* metric. While this value is still a valid lower bound, the error bounds on it are higher than other metrics in the repository.

For these files, [daily-journalier](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier) has totals for the day, while [weekly-hebdomadaire](https://github.com/cds-snc/covid-alert-data/blob/main/csv/weekly-hebdomadaire) and [monthly-mensuel](https://github.com/cds-snc/covid-alert-data/blob/main/csv/monthly-mensuel) contain averages for the week/month.


| filename | aggregation |
| ------------- |------------- |
| active_users.*time_period*.csv | by date |
| active_users_pt.*time_period*.csv | by date and PT |
| active_users_os.*time_period*.csv | by date and OS |
| active_users_pt_os.*time_period*.csv | by date, PT, and OS |
| active_users_os_av.*time_period*.csv | by date, OS, and app version |

### App turned off and on

This indicates how frequently the app’s [“on/off” feature](https://www.canada.ca/en/health-canada/news/2020/12/covid-alert-app-updated-to-serve-canadians-better.html) is used.

| filename | aggregation |
| ------------- |------------- |
| Not yet available | |


### Background checks: number of devices starting and completing, per day

This indicates the number of devices that are starting and successfully completing background checks, at least once per UTC day.

 * If a device starts and successfully completes a background check, it indicates COVID Alert is working as intended with full functionality (eg. completing exposure checks when the app is running in the background).
 * If a device starts but does not complete a background check, it indicates that COVID Alert is not performing exposure checks, most likely due to user choices (e.g., Google/Apple Exposure Notification framework, Bluetooth, or data is turned off).
 * If a device does not start a background check at all, COVID Alert is not functioning as intended and is not performing exposure checks.

The difference between this *daily_background_check_started* metric and the *active_users* metric is that the *daily_background_check_started* only includes exposure checks attempted while the app is running in the background.

 * These metrics were initially only available on Android devices. These metrics were released for iOS on May 21, 2021. Prior to that the iOS values would show `<20`.
 * *daily_background_check_started* counts all devices that start the app’s background task at least once in a given UTC day.
 * *daily_background_check_successfully_completed* counts all devices that successfully performed an exposure check at least once per UTC day.

Note that the *daily_background_check_started* metric on iOS, in particular, is known to be lower than expected. Outside of the considerations mentioned in Data Coverage above, there is an issue where *daily_background_check_started* is not being reported in all cases on iOS. While this value is still a valid lower bound, the error bounds on it are higher than other metrics in the repository.

In addition, exposure checks that are completed when the app is in the foreground (manually opened by the user) appear in the data file for successfully completed (*daily_background_check_successfully_completed*) (counted once per UTC day) but not in the data file for background started (*daily_background_check_started*). The latter is only triggered by the background check process. This contributes to a significantly higher count for successfully completed (*daily_background_check_successfully_completed*) than the count for background started (*daily_background_check_started*) for iOS devices.

For these files, [daily-journalier](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier) has totals for the day, while [weekly-hebdomadaire](https://github.com/cds-snc/covid-alert-data/blob/main/csv/weekly-hebdomadaire) and [monthly-mensuel](https://github.com/cds-snc/covid-alert-data/blob/main/csv/monthly-mensuel) contain averages for the week/month.

| filename | aggregation |
| ------------- |------------- |
| daily_background_check_started_os.*time_period*.csv | by date and OS |
| daily_background_check_successfully_completed_os.*time_period*.csv | by date and OS |


### Background checks: total number per device, per day

This indicates the total number of background checks on a given device completed in one day, grouped into ranges.

 * The number of background checks that take place on a given device varies based on a number of factors (battery level, network connectivity, etc.).
 * Devices which are unable to conduct background checks are unable to send metric events. As we don’t know the number of devices that are not performing background checks, the number of devices ("count-nombre") is returned as "0". This is masked and displayed as `<20` to comply with privacy guidelines.

| filename | aggregation |
| ------------- |------------- |
| background_checks_nc.*time_period*.csv | by date and number of background checks [1-3 per day, 4-6 per day, etc.]|
| background_checks_nc_os.*time_period*.csv | by date, number of checks, and OS |
| background_checks_nc_os_av.*time_period*.csv | by date, number of checks, OS, and app version |
| Not yet available | by date, OS, app version, and success/fail |

### Exposure notifications sent

This indicates the number of exposure notifications sent to users ("You’ve been exposed in the last 14 days") as measured by the app (a) switching from the default "monitoring" state to the "exposed" state, or (b) recording another exposure when already in the "exposed" state.

 * Users who receive an exposure notification while running a version of the app from before in-app metrics were introduced do not appear in this data.
 * Users can receive multiple exposure notifications to the same device; these subsequent exposure notifications are included in this data.
 * *exposed_es* and *exposed_pt_es* indicate the number of devices that received an exposure notification based on the current state of the app (for example, for users who receive multiple notifications within the same "exposed" time period).


| filename | aggregation |
| ------------- |------------- |
| exposed.*time_period*.csv | by date |
| exposed_pt.*time_period*.csv | by date and PT |
| exposed_pt_os.*time_period*.csv | by date, PT, and OS |
| exposed_pt_es.*time_period*.csv | by date, PT, and exposure status prior to receiving notification |
| exposed_es.*time_period*.csv | by date and exposure status prior to receiving notification |


### Manually clearing exposure notifications

This indicates how frequently the app’s [“manually clear exposure notifications” feature](https://www.canada.ca/en/health-canada/news/2020/12/covid-alert-app-updated-to-serve-canadians-better.html) is used.


| filename | aggregation |
| ------------- |------------- |
| clear_exposed.*time_period*.csv | by date |
| Not yet available ||


### New installs

This indicates new installs or reinstalls of COVID Alert, triggered at the beginning of the onboarding process after the app is launched.

 * Province/Territory aggregation is not provided for this metric, since it is unknown at the time the app is installed.


| filename | aggregation |
| ------------- |------------- |
| installs.*time_period*.csv | by date |
| installs_os.*time_period*.csv | by date and OS |
| installs_os_av.*time_period*.csv | by date, OS, and app version |

### Onboarding progress

This indicates the number of users who complete or drop off onboarding at different stages.

 * In order for COVID Alert to function properly, users must enable the Google/Apple Exposure Notification (GAEN) framework via an operating system prompt. The prompt normally appears when the user first installs and runs the app, or via the phone’s operating system settings screen. To onboard, the user must give COVID Alert permission to display notifications.


| filename | aggregation |
| ------------- |------------- |
| onboarded_os.*time_period*.csv | by date and OS |
| onboarded_os_av.*time_period*.csv | by date, OS, and app version |
| onboarded_fe_np.*time_period*.csv | by date, GAEN framework enabled, and if notifications permission is granted |


### One-time keys (OTKs) entered into the app

This indicates the number of users who entered a one-time key (OTK), confirming a positive COVID diagnosis within the app and initiating exposure notification alerts to alert other app users that they were exposed.

 * This is the in-app equivalent of the server-side *otk_claimed* metric noted below, however the in-app figures are smaller than the [OTKs entered into the app according to the server](#one-time-keys-otks-claimed) (which gives a more accurate overall total).
   * These differences are because in-app figures don’t include OTKs claimed in older versions of the app before the in-app metric was introduced; the app began reporting this data March 28, 2021.
   * If a user enters a OTK within an earlier version of the app that predates in-app metrics, it will appear in the server-side data but not the in-app data.
 * *otk_es* indicates the number of people who enter a OTK (confirming a positive COVID diagnosis) while either in the default "monitoring" state, or in the "exposed" state after having previously received an exposure notification. The number of people who enter a OTK while in an "exposed" state is referred to by the Government of Canada as "OTKs entered by users after notification".
 * *otk_pt_dp* indicates the number of people who enter a OTK (confirming a positive COVID diagnosis) and do or do not choose to enter their date of test or symptom onset. The dates themselves are not collected, and therefore are not included in the data set.


| filename | aggregation |
| ------------- |------------- |
| otk.*time_period*.csv | by date |
| otk_pt.*time_period*.csv | by date and PT |
| otk_pt_os.*time_period*.csv | by date, PT, and OS |
| otk_es.*time_period*.csv | by date and exposure status prior to entering OTK |
| otk_pt_dp.*time_period*.csv | by date, PT, and test/symptom date provided [with date vs. without date] |


## Metrics reported by the [COVID Alert key server](https://github.com/cds-snc/covid-alert-server)

### One-time keys (OTKs) claimed

This indicates the number of one-time keys claimed via the app by COVID Alert users with positive COVID diagnoses. This is the server-side equivalent of [the in-app “OTKs entered into the app” metric above](#one-time-keys-otks-entered-into-the-app).

 * Server-side OTK data was collected from October 3, 2020 onwards. The total  number of OTKs claimed is [published on Canada.ca under “One-time keys used”](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html#a6).
 * 698 OTKs were claimed between the launch of the app (July 31, 2020) and the introduction of server-side OTK data collection (October 3, 2020). These 698 OTKs are included in [the Canada.ca total](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert.html#a6) but not the files below.

| filename | aggregation |
| ------------- |------------- |
| server_otk_claimed.*time_period*.csv | by date |
| server_otk_claimed_pt.*time_period*.csv | by date and PT |


### One-time keys (OTKs) generated

This indicates the number of one-time keys generated by provincial/territorial public health staff, or requested via provincial/territorial IT systems.

 * In some cases, OTKs may have been generated during training or testing by public health staff; the number of OTKs shared with COVID-positive individuals would be slightly lower as a result.
 * Server-side OTK data was collected from October 3, 2020 onwards.

| filename | aggregation |
| ------------- |------------- |
| server_otk_generated.*time_period*.csv | by date |
| server_otk_generated_pt.*time_period*.csv | by date and PT |


## Download numbers from the Apple and Google App Stores

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

 * **September 21, 2021**
    * Update to server-side handling of large metrics packets deployed (Android _active_users_ metrics are affected between September 22 and mid-November due to a known retry issue)
 * **September 1, 2021**
    * App version 1.5.4 published
        * Updates to iOS _daily_background_check_completed_ handling
* **August 10, 2021**
    * App version 1.5.3 published
        * Fix for iOS background check metrics (affecting data from August 6 to August 10, 2021)
 * **June 29, 2021**
    * App version 1.4.5 published
        * Added error handling metrics
 * **June 22, 2021**
    * App version 1.4.4 published
        * Updates to how _active_users_ metrics are sent by iOS devices
 * **June 7, 2021**
   * Fixed a backend processing issue with *otk* CSV files (correcting data from May 19 to June 7, 2021)
 * **June 3, 2021**
   * App version 1.4.1 published
     * Updates to how *daily_background_check_started* and *active_users* metrics are sent by iOS devices
 * **May 25, 2021**
   * Additional background information added to this Readme file
 * **May 21, 2021**
   * Fixed metrics destination for *daily_background_check_started* and *daily_background_check_successfully_completed* on iOS devices
 * **May 19, 2021**
   * *on_off_ac* removed (not currently updated)
 * **May 18, 2021**
   * App version 1.2.9 published
     * Updated *active_users* metric that runs at the start of the background check, and if the app is opened manually
     * *daily_background_check_started* and *daily_background_check_successfully_completed* metrics initially added for iOS devices
 * **May 17, 2021**
   * Repository license updated
 * **April 26, 2021**
   * *daily_background_check_started* and *daily_background_check_successfully_completed* metrics added to this data repository
 * **April 23, 2021**
   * Semantic app version numbers are displayed in this repository, instead of build numbers
 * **April 22, 2021**
   * App version 1.2.8 published
     * Additional reliability improvements for in-app metrics on Android devices
 * **April 21, 2021**
   * Downloads and cumulative downloads are added to this repository
 * **April 15, 2021**
   * Server-side OTK metrics are added to this repository
 * **April 9, 2021**
   * App version 1.2.7 published
     * Attempted fixes for *on_off_ac* (on/off feature metric)
     * Improved internal state handling
 * **April 6, 2021**
   * App version 1.2.6 published
     * Additional reliability improvements for in-app metrics
     * Fixes for *exposed* metric handling (exposure notifications received)
     * Multiple exposure notifications received are now counted in *exposed* data
       * With this change, someone could now receive an exposure notification even if their app was already in the “exposed state”. That was not possible before this change.
       * This expanded the in-app “exposure notifications sent” metric to *also* include devices “changing” from "exposed state” to “exposed state” (eg. receiving a notification while already in an exposed state).
       * We would expect the number of notifications sent to increase somewhat as a result of adding the multiple exposures feature. However, the change did not necessarily cause the increase, as it could also be attributed to other factors.
 * **March 30, 2021**
   * App version 1.2.5 published
     * Reliability improvements for in-app metrics
 * **March 25, 2021**
   * App version 1.2.4 published
     * Fixes for *otk* metric handling (OTKs entered)
     * *daily_background_check_started* and *daily_background_check_successfully_completed* metrics added for Android devices
 * **March 23, 2021**
   * Daily/weekly/monthly time period subdirectories are generated, to make it easier to access data by time period
 * **March 22, 2021**
   * Additional CSV files are generated
 * **March 19, 2021**
   * This data repository is created; initial test CSV files are generated
 * **March 4, 2021**
   * App version 1.2.2 published
     * Further updates to app and server communications
 * **February 26, 2021**
   * App version 1.2.1 published
     * Improving how often the app communicates metric events to the server
 * **February 9, 2021**
   * App version 1.2.0 published
     * Initial launch of [in-app metrics](https://www.canada.ca/en/health-canada/news/2021/02/covid-alert-updated-to-help-evaluate-its-effectiveness-in-reducing-the-spread-of-covid-19.html)
     * Added one-time notification to inform people of new metrics being collected and changes to the [privacy notice](https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/covid-alert/privacy-policy.html)


---

# Données d’Alerte COVID

Le référentiel de données d’Alerte COVID contient des mesures de performance agrégées recueillies par l’ensemble du [système Alerte COVID](https://www.canada.ca/fr/sante-publique/services/maladies/maladie-coronavirus-covid-19/alerte-covid.html). Le référentiel est mis à jour tous les soirs avec les données du jour précédent.

Ces données de mesures de performance peuvent être utilisées pour donner un aperçu de la performance de l’application, de la distribution des clés à usage unique et de diverses autres questions. Toute valeur représentant moins de 20 points de données recueillies a été remplacée par le texte `<20` afin d’assurer la conformité avec les [directives du Conseil du Trésor sur la protection des renseignements personnels lors de la diffusion de renseignements à propos d’un petit nombre de personnes](https://www.canada.ca/fr/secretariat-conseil-tresor/services/acces-information-protection-reseignements-personnels/avis-mise-acces-information-protection-renseignements-personnels/2020-03-protection-renseignements-personnels-diffusion-renseignements-propos-petit-nombre-personnes.html).

Pour en savoir plus sur la protection des renseignements personnels, consultez l’[annexe B de l’évaluation de la protection des renseignements personnels pour Alerte COVID : mesures de performance d’Alerte COVID. Pour plus de renseignements contextuels sur Alerte COVID, consultez le référentiel de documentation](https://github.com/cds-snc/covid-alert-documentation/blob/main/EvaluationViePriveeAlerteCOVID.md#annexe-b--mesures-de-performance-dalerte-covid) sur Alerte COVID ou visitez la page [Alerte COVID sur Canada.ca](https://www.canada.ca/fr/sante-publique/services/maladies/maladie-coronavirus-covid-19/alerte-covid.html).

### Données recueillies

En raison de la [conception de l’application axée sur la protection des renseignements personnels](https://github.com/cds-snc/covid-alert-documentation/blob/main/EvaluationViePriveeAlerteCOVID.md#5-fonctionnement-de-lapplication-alerte-covid), les mesures de performance intégrées à l’application ne représentent pas nécessairement tous les appareils exécutant l’application. La conception de l’application axée sur la préservation de la vie privée signifie qu’il n’est pas possible de savoir si des données sont collectées pour tous les téléphones. De plus, **les utilisateurs ayant une version plus ancienne d’Alerte COVID qui n’inclue pas la fonctionnalité des mesures de performance intégrées à l’application introduite le 25 février 2021 ne sont pas comptabilisés dans ces données**. Par conséquent, les fichiers CSV relatifs aux mesures de performance intégrées contenues dans ce référentiel devraient être considérés comme un échantillon du total d’utilisateurs d’Alerte COVID.

Les valeurs affichées pour des périodes précédentes peuvent également augmenter avec le temps. Cela peut se produire lorsqu’un utilisateur désactive la transmission de données sur son appareil pendant plusieurs jours. Lorsque la transmission de données reprend sur l’appareil, les mesures de performance sont envoyées au serveur, ce qui augmente les valeurs historiques.

### Sources de données

Ce référentiel est alimenté de trois sources de données :

*   Mesures de performance intégrées à l’application recueillies par [les applications iOS et Android](https://github.com/cds-snc/covid-alert-app);
*   Mesures de performance recueillies par [le serveur de clés Alerte COVID](https://github.com/cds-snc/covid-alert-server);
*   Nombre de téléchargements tiré des boutiques d’applications Apple et Google.

Étant donné que les données de mesures intégrées à l’application n’identifient pas complètement l’appareil, il convient d’éviter de comparer directement les mesures de performance intégrées à l’application avec les données du serveur de clés ou celles des boutiques d’application. Dans la plupart des cas, les mesures intégrées à l’application sont inférieures aux données correspondantes dans d’autres sources.

### Périodes

Les mesures de performance sont recueillies sur trois périodes : Quotidiennes, hebdomadaires et mensuelles. **Les dates fournies pour les données hebdomadaires et mensuelles reflètent le dernier jour de cette période** (p. ex., les données mensuelles pour avril 2021 sont identifiées de cette manière : `2021-04-30`). La combinaison des données de deux périodes peut engendrer le dédoublement des données pour les périodes qui se chevauchent; p. ex., les données mensuelles peuvent contenir des jours de la dernière semaine du mois précédent dans les données hebdomadaires.

Des mesures de performance intégrées à l’application ont été ajoutées au service d’Alerte COVID le 25 février 2021. Avant la mise en service de cette fonction, aucune donnée n’était recueillie par l’application. Des versions subséquentes de l’application ont ajouté de nouvelles mesures de performance ou corrigé des bogues dans les mesures introduites dans une version précédente. Les données pour certaines mesures de performance auront donc été recueillies pour des périodes plus courtes. Voir le [journal des modifications](#journal-des-modifications) pour plus de détails.

Les fichiers CSV utilisent une structure basée sur la [norme de données Tidy](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html#tidy-data). Ces fichiers sont mis à jour quotidiennement par le [référentiel ETL des mesures de performance d’Alerte COVID](https://github.com/cds-snc/covid-alert-metrics-etl#extraction-transformation-et-chargement-etl-des-mesures-de-performance-dalerte-covid).

## Contexte et contraintes

*   Ce référentiel comprend uniquement les données des [trois sources de données indiquées ci-dessus](#sources-de-donn%C3%A9es).
*   **En raison de la [conception de l’application axée sur la protection des renseignements personnels](https://github.com/cds-snc/covid-alert-documentation/blob/main/EvaluationViePriveeAlerteCOVID.md#5-fonctionnement-de-lapplication-alerte-covid)**, les mesures de performance intégrées à Alerte COVID sont recueillies de façon agrégée, c.-à-d. que (a) les mesures intégrées à l’application sont des estimations et que (b) les données ne peuvent servir à identifier un appareil précis. Il n’est pas possible de commenter les changements de comportement pour un type d’appareil ou pour un ensemble d’appareils spécifique. Aucune autre information n’est disponible directement à partir de l’application ou du cadre de notification d’exposition.
*   **Les données de mesures de performance intégrées à l’application doivent être considérées comme un sous-ensemble du nombre total d’utilisateurs d’Alerte COVID**. Les données provenant des mesures de performance intégrées à l’application représentent les utilisateurs d’Alerte COVID qui exécutent une version de l’application qui comprend la fonctionnalité des mesures intégrées à l’application et dont l’appareil effectue avec succès la vérification en arrière-plan.
*   **Les données de mesures de performance intégrées à l’application ne sont disponibles qu’à partir du 25 février 2021, lorsque cette fonctionnalité a été introduite dans l’application**. Des correctifs supplémentaires ont également été apportés au cours des mois suivants. Les données des mesures côté serveur sont disponibles à compter du 3 octobre 2020. Avant l’ajout des mesures de performance côté serveur et intégrées à l’application, seules les mesures de téléchargement des boutiques d’applications étaient disponibles.
*   **Les dates de début des fichiers CSV dans ce référentiel peuvent varier** en fonction de la date de publication des améliorations techniques ou des correctifs pour des mesures précises.
*   **Les données de mesures de performance intégrées à l’application n’apparaissent pas nécessairement sur GitHub à la date à laquelle elles sont recueillies.** Par conséquent, les données historiques peuvent changer avec le temps. En effet, les fonctions de transmission de données ou Wi-Fi doivent être activées sur un appareil pour envoyer des données de mesures de performance au serveur. Si ces fonctions sont désactivées puis réactivées, l’application peut envoyer des données de mesures de performance pour les jours où il était hors ligne.
*   Les sauts ou les baisses notables des valeurs rapportées pour certaines mesures (par exemple, les clés à usage unique ou les notifications) à des dates précises peuvent être attribués à des changements techniques qui ont influé sur les données. 
    *   Consultez le [Journal des modifications](#journal-des-modifications) ci-dessous pour en savoir plus sur les modifications apportées à l’application ou au référentiel qui pourraient être reflétées dans les données. 
    *   **Si vous avez une question sur les données, veuillez signaler une question dans l’[outil de suivi des problèmes GitHub](https://github.com/cds-snc/covid-alert-data/issues/new).**
*   Les données relatives au nombre de clés à usage unique réclamées sur le serveur (la mesure otk_claimed côté serveur) et au nombre de clés à usage unique entrées dans l’application (la mesure des clés à usage unique intégrée à l’application) ne sont pas égales. Cette situation s’explique du fait que certains utilisateurs exécutent toujours d’anciennes versions d’Alerte COVID qui ne comprennent pas la fonctionnalité des mesures de performance. Les utilisateurs ayant une ancienne version d’Alerte COVID peuvent toujours saisir avec succès une clé à usage unique sur leur appareil en cas de diagnostic positif, ce qui augmente la mesure otk_claimed côté serveur, mais pas la mesure clé à usage unique intégrée à l’application.
*   **Le total des « clés à usage unique utilisées » [figurant sur Canada.ca](https://www.canada.ca/fr/sante-publique/services/maladies/maladie-coronavirus-covid-19/alerte-covid.html#a6), qui provient des données sur les clés à usage unique côté serveur, est légèrement plus élevé que la mesure « otk_claimed » côté serveur dans le référentiel des données de mesures de performance.** Cela s’explique du fait que la journalisation des mesures de performance côté serveur en fonction de la date n’a commencé que plusieurs mois après le lancement de l’application, soit à compter du 3 octobre 2020.
*   **Alerte COVID fait partie de l’intervention canadienne à la COVID-19.**
    *   Pour des données sociales et de santé publique plus générales, consultez [le site Web de visualisation des données COVID-19 de l’Agence de la santé publique du Canada](https://sante-infobase.canada.ca/covid-19/), qui comprend des données sources au format CSV, ou les sites Web de santé publique provinciaux et territoriaux.
    *   Pour obtenir des données sur l’adoption de la téléphonie mobile au Canada, consultez [les données de 2018 de Statistique Canada sur l’utilisation des téléphones intelligents](https://www150.statcan.gc.ca/t1/tbl1/fr/tv.action?pid=2210011501&request_locale=fr).

## Liens rapides

Vous trouverez ci-dessous des liens vers certaines des mesures de performance globales pour tous les utilisateurs de l’application. Toutes ces données sont comptabilisées quotidiennement et sont datées au format `AAAA-MM-JJ`.

*   [Téléchargements cumulatifs dans les boutiques d’applications](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier/cumulative_downloads_os.daily-journalier.csv)
*   [Utilisateurs actifs quotidiens](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier/active_users.daily-journalier.csv)
*   [Notifications d’exposition reçues](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier/exposed.daily-journalier.csv)
*   [Clés uniques utilisées](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier/otk.daily-journalier.csv)
*   [Nouvelles installations](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier/installs.daily-journalier.csv)

Le référentiel contient plusieurs autres fichiers, ventilés par province/territoire, système d’exploitation, version de l’application et autres variables. La liste complète est fournie à la section suivante.

## Définitions des données

Chaque mesure de performance est disponible en format agrégé quotidiennement, hebdomadairement et mensuellement. Ceci est indiqué par _periode_ dans le nom de fichier : _nom_de_mesure_._periode_.csv. Toutes les dates sont au format UTC.

Les acronymes suivants sont utilisés dans les noms de fichiers CSV pour les données comprises dans le fichier :

*   `PT` = Province/Territoire (sélectionné par l’utilisateur lors de la configuration de l’application)
*   `OS` = Système d’exploitation (Android ou iOS)
*   `NC` = Nombre de vérifications (nombre de vérifications en arrière-plan au cours de la période spécifiée)
*   `ES` = Statut d’exposition (si l’application de l’utilisateur est à l’état « exposé » en fonction des clés récupérées du serveur ou à l’état « surveillance » par défaut)
*   `FS` = État du cadre de notification d’exposition (état du cadre de notification d’exposition Google Apple [GAEN], c.-à-d. s’il est activé ou désactivé)
*   `DP` = Date fournie (si la « date des premiers symptômes » ou la « date du test » a été fournie lors de l’utilisation d’une clé à usage unique)
*   `NP` = Autorisation de notification (si l’autorisation de notification du système d’exploitation a été activée pour Alerte COVID lors de la configuration)

Dans les fichiers CSV, les en-têtes de colonnes et les mots-clés sont écrits en anglais et en français, séparés par des tirets. Les signes diacritiques ne sont pas utilisés afin de maximiser la compatibilité des fichiers CSV entre les systèmes.

## Mesures de performance intégrées à l’application recueillies par [les applications iOS et Android](https://github.com/cds-snc/covid-alert-app)

### Utilisateurs actifs

La mesure des utilisateurs actifs indique le nombre d’appareils qui ont tenté d’effectuer une vérification d’exposition, afin de déterminer si l’utilisateur a été à proximité d’un autre utilisateur qui a obtenu un diagnostic positif de COVID-19 et saisi une clé à usage unique. Cette mesure tient compte de _tous les_ appareils qui tentent une vérification d’exposition, que l’application soit exécutée au premier plan (c.-à-d. lorsque l’application est ouverte) ou en arrière-plan. Elle est enregistrée une fois par jour UTC.

Si la vérification d’exposition indique que l’utilisateur s’est trouvé à proximité d’une personne qui a saisi une clé à usage unique, l’application passe à l’« état exposé » et l’utilisateur reçoit une notification d’exposition. 

Notez que les valeurs indiquées par la mesure des utilisateurs actifs sur iOS sont inférieures aux données attendues. Mis à part les considérations mentionnées dans la couverture des données ci-dessus, il existe un problème où les utilisateurs actifs ne sont pas signalés dans tous les cas sur iOS. La mesure _active_users_ est donc inférieure à la mesure _daily_background_check_successfully_completed._ Bien que cette valeur représente toujours une limite inférieure valide, les limites d’erreur y sont plus élevées que pour les autres mesures du référentiel.

Dans ces fichiers, [daily-journalier](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier) comprend les totaux quotidiens, alors que [weekly-hebdomadaire](https://github.com/cds-snc/covid-alert-data/blob/main/csv/weekly-hebdomadaire) et [monthly-mensuel](https://github.com/cds-snc/covid-alert-data/blob/main/csv/monthly-mensuel) comprennent les moyennes pour la semaine et le mois.

<table>
  <tr>
   <td><strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>active_users.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>active_users_pt.<em>periode</em>.csv
   </td>
   <td>par date et PT
   </td>
  </tr>
  <tr>
   <td>active_users_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
  <tr>
   <td>active_users_pt_os.<em>periode</em>.csv
   </td>
   <td>par date, PT et OS
   </td>
  </tr>
  <tr>
   <td>active_users_os_av.<em>periode</em>.csv
   </td>
   <td>par date, OS et version de l’application
   </td>
  </tr>
</table>


### Application désactivée et activée

Cette mesure indique à quelle fréquence [la fonction « désactiver/réactiver »](https://www.canada.ca/fr/sante-canada/nouvelles/2020/12/mise-a-jour-de-lapplication-alerte-covid-pour-mieux-servir-les-canadiens.html)de l’application est utilisée.

<table>
  <tr>
   <td><strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>Pas encore disponible
   </td>
   <td>
   </td>
  </tr>
</table>


### Vérifications en arrière-plan : nombre d’appareils qui lancent et terminent la vérification, par jour

Cette mesure représente le nombre d’appareils qui lancent et terminent avec succès les vérifications en arrière-plan, au moins une fois par jour UTC.     

*   Si un appareil lance et termine avec succès une vérification en arrière-plan, cela indique qu’Alerte COVID fonctionne comme prévu avec toutes les fonctionnalités (c.-à-d. vérifications d’exposition effectuées lorsque l’application s’exécute en arrière-plan). 
*   Si un appareil lance, mais ne termine pas une vérification en arrière-plan, cela indique qu’Alerte COVID n’effectue pas de vérifications d’exposition, probablement en raison d’un choix de l’utilisateur (p. ex., l’utilisateur a désactivé le cadre de notification d’exposition Google/Apple, Bluetooth ou la transmission de données).
*   Si un appareil ne lance pas de vérification en arrière-plan, Alerte COVID ne fonctionne pas comme prévu et n’effectue pas la vérification d’exposition.

La différence entre la mesure _daily_background_check_started_ et la mesure _active_users_ est que _daily_background_check_started_ n’inclut que les vérifications d’exposition tentées pendant que l’application s’exécute en arrière-plan.     

*   Ces mesures n’étaient initialement disponibles que sur les appareils Android. Ces mesures ont été publiées pour iOS le 21 mai 2021. Avant cette version, les valeurs pour iOS affichaient `<20`.
*   _daily_background_check_started_ comptabilise tous les appareils qui lancent la tâche de vérification en arrière-plan de l’application au moins une fois par jour UTC.
*   _daily_background_check_successfully_completed_ comptabilise tous les appareils qui ont réussi une vérification d’exposition au moins une fois par jour UTC.

Notez que les valeurs indiquées par la mesure _daily_background_check_started_ sur iOS sont inférieures aux données attendues. Mis à part les considérations mentionnées dans la couverture des données ci-dessus, il existe un problème où la mesure _daily_background_check_started_ n’est pas signalée dans tous les cas sur iOS. Bien que cette valeur représente toujours une limite inférieure valide, les limites d’erreur y sont plus élevées que pour les autres mesures du référentiel.

De plus, les vérifications d’exposition effectuées lorsque l’application est au premier plan (ouverte manuellement par l’utilisateur) sont inscrites dans le fichier de données comme étant terminées avec succès (_daily_background_check_successfully_completed_) (compté une fois par jour UTC), mais pas dans le fichier de données pour les vérifications en arrière-plan lancées (_daily_background_check_started_). Cette mesure n’est déclenchée que par le processus de vérification en arrière-plan. Ainsi, le nombre de vérifications effectuées avec succès (_daily_background_check_successfully_completed_) est considérablement plus élevé que le nombre de vérifications en arrière-plan lancées (_daily_background_check_started_) pour les appareils iOS.

Dans ces fichiers, [daily-journalier](https://github.com/cds-snc/covid-alert-data/blob/main/csv/daily-journalier) comprend les totaux quotidiens, alors que [weekly-hebdomadaire](https://github.com/cds-snc/covid-alert-data/blob/main/csv/weekly-hebdomadaire) et [monthly-mensuel](https://github.com/cds-snc/covid-alert-data/blob/main/csv/monthly-mensuel) comprennent les moyennes pour la semaine et le mois.

<table>
  <tr>
   <td><strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>daily_background_check_started_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
  <tr>
   <td>daily_background_check_successfully_completed_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
</table>


### Vérifications en arrière-plan : nombre total par appareil, par jour

Cette mesure représente le nombre total de vérifications en arrière-plan exécutées sur un appareil pour un jour donné, regroupées en plages.

*   Le nombre de vérifications en arrière-plan qui ont lieu sur un appareil donné varie en fonction de plusieurs facteurs (niveau de la batterie, connectivité réseau, etc.).
*   Les appareils qui ne peuvent pas effectuer de vérification en arrière-plan ne peuvent pas envoyer de données de mesures de performance. Comme nous ne connaissons pas le nombre d’appareils qui n’effectuent pas de vérification en arrière-plan, le nombre d’appareils (« count-nombre ») affiche « 0 ». Pour se conformer aux directives de confidentialité, ce résultat est masqué et s’affiche comme `<20`. 

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>background_checks_nc.<em>periode</em>.csv
   </td>
   <td>par date et nombre de vérifications en arrière-plan [1 à 3 par jour, 4 à 6 par jour, etc.]
   </td>
  </tr>
  <tr>
   <td>background_checks_nc_os.<em>periode</em>.csv
   </td>
   <td>par date, nombre de vérifications et OS
   </td>
  </tr>
  <tr>
   <td>background_checks_nc_os_av.<em>periode</em>.csv
   </td>
   <td>par date, nombre de vérifications, OS et version de l’application
   </td>
  </tr>
  <tr>
   <td>Pas encore disponible
   </td>
   <td>par date, OS, version de l’application et succès/échec
   </td>
  </tr>
</table>


### Notifications d’exposition envoyées

Cette mesure représente le nombre de notifications d’exposition (« Vous avez été exposé au cours des 14 derniers jours ») envoyées aux utilisateurs et recueillies par l’application (a) en passant de l’état « surveillance » par défaut à l’état « exposé » ou (b) en signalant une autre exposition alors qu’elle est déjà à l’état « exposé ».

* Les utilisateurs qui reçoivent une notification d’exposition lors de l’exécution d’une version de l’application préalable à la fonction des mesures de performance intégrées à l’application dans l’application ne sont pas comptabilisés dans ces données.
* Les utilisateurs peuvent recevoir plusieurs notifications d’exposition sur le même appareil; ces notifications d’exposition ultérieures sont comprises dans ces données.
* _exposed_es_ et _exposed_pt_es_ indiquent le nombre d’appareils qui ont reçu une notification d’exposition en fonction de l’état actuel de l’application (p. ex., pour les utilisateurs qui reçoivent plusieurs notifications au cours de la même période « exposée »).

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>exposed.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>exposed_pt.<em>periode</em>.csv
   </td>
   <td>par date et PT
   </td>
  </tr>
  <tr>
   <td>exposed_pt_os.<em>periode</em>.csv
   </td>
   <td>par date, PT et OS
   </td>
  </tr>
  <tr>
   <td>exposed_pt_es.<em>periode</em>.csv
   </td>
   <td>par date, PT et statut d’exposition avant la réception de la notification
   </td>
  </tr>
  <tr>
   <td>exposed_es.<em>periode</em>.csv
   </td>
   <td>par date et statut d’exposition avant la réception de la notification
   </td>
  </tr>
</table>


### Effacer manuellement les notifications d’exposition

Cette mesure indique à quelle fréquence la fonction [« Effacer manuellement les notifications d’exposition »](https://www.canada.ca/fr/sante-canada/nouvelles/2020/12/mise-a-jour-de-lapplication-alerte-covid-pour-mieux-servir-les-canadiens.html) de l’application est utilisée.

<table>
  <tr>
   <td><strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>clear_exposed.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>Pas encore disponible
   </td>
   <td>par date et durée [&lt;1 heure, 2-3 heures, etc.]
   </td>
  </tr>
  <tr>
   <td>Pas encore disponible
   </td>
   <td>par date, PT et OS
   </td>
  </tr>
</table>


### Nouvelles installations

Cette mesure représente les nouvelles installations ou réinstallations d’Alerte COVID. Elle est déclenchée au début du processus de configuration après le lancement de l’application.

* L’agrégation par province/territoire n’est pas fournie pour cette mesure, car cette information est inconnue au moment de l’installation de l’application.

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>installs.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>installs_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
  <tr>
   <td>installs_os_av.<em>periode</em>.csv
   </td>
   <td>par date, OS et version de l’application
   </td>
  </tr>
</table>


### Progression de la configuration

Cette mesure représente le nombre d’utilisateurs qui terminent ou abandonnent la série d’écrans d’introduction à différentes étapes.

*   Pour qu’Alerte COVID fonctionne correctement, les utilisateurs doivent activer le cadre de notification d’exposition Google/Apple (GAEN) à l’aide d’une invite du système d’exploitation. L’invite apparaît normalement lorsque l’utilisateur installe et exécute l’application pour la première fois. Sinon, elle est accessible dans les paramètres du système d’exploitation de l’appareil. Pour effectuer la configuration, l’utilisateur doit autoriser Alerte COVID à afficher des notifications.

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>onboarded_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
  <tr>
   <td>onboarded_os_av.<em>periode</em>.csv
   </td>
   <td>par date, OS et version de l’application
   </td>
  </tr>
  <tr>
   <td>onboarded_fe_np.<em>periode</em>.csv
   </td>
   <td>par date, cadre GAEN activé et affichage de notifications autorisé
   </td>
  </tr>
</table>


### **Clés à usage unique saisies dans l’application**

Cette mesure représente le nombre d’utilisateurs qui ont saisi une clé à usage unique, confirmant un diagnostic de COVID-19 positif dans l’application et engendrant l’envoi de notifications d’exposition aux appareils qui ont été à proximité de l’utilisateur.     

*   Il s’agit de l’équivalent dans l’application de la mesure côté serveur _otk_claimed_ indiquée ci-dessous. Cependant, les valeurs recueillies par l’application sont inférieures à [celles signalées par le serveur](#clés-à-usage-unique-réclamées) (ce qui donne un total global plus précis).
    *   Ces différences sont attribuables au fait que les mesures intégrées à l’application n’incluent pas les clés à usage unique utilisées dans les anciennes versions de l’application, avant l’introduction des mesures de performance intégrées à l’application; l’application n’a commencé à enregistrer ces données qu’à partir du 28 mars 2021.
    *   Si un utilisateur saisit une clé à usage unique dans une ancienne version de l’application qui précède les mesures de performance intégrées à l’application, il sera comptabilisé dans les données côté serveur, mais pas dans les mesures intégrées à l’application.
*   _otk_es_ représente le nombre de personnes qui saisissent une clé à usage unique (confirmant un diagnostic positif de COVID-19) alors que l’application est soit à l’état « surveillance » par défaut, soit à l’état « exposé » après avoir préalablement reçu une notification d’exposition. Le nombre de personnes qui saisissent une clé à usage unique alors que l’application est à l’état « exposé » est répertorié par le gouvernement du Canada sous la mesure « Clés à usage unique saisies après notification ».
*   _otk_pt_dp_ indique le nombre de personnes qui saisissent une clé à usage unique (confirmant un diagnostic positif de COVID-19) et qui choisissent ou non de saisir la date du test ou d’apparition des symptômes. Les dates elles-mêmes ne sont pas collectées et ne sont donc pas incluses dans l’ensemble de données.

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>otk.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>otk_pt.<em>periode</em>.csv
   </td>
   <td>par date et PT
   </td>
  </tr>
  <tr>
   <td>otk_pt_os.<em>periode</em>.csv
   </td>
   <td>par date, PT et OS
   </td>
  </tr>
  <tr>
   <td>otk_es.<em>periode</em>.csv
   </td>
   <td>par date et état d’exposition avant de saisir une clé à usage unique
   </td>
  </tr>
  <tr>
   <td>otk_pt_dp.<em>periode</em>.csv
   </td>
   <td>par date, PT et date du test/des premiers symptômes fournis [avec date vs sans date]
   </td>
  </tr>
</table>


## Mesures de performance recueillies par [le serveur de clés Alerte COVID](https://github.com/cds-snc/covid-alert-server).

### Clés à usage unique réclamées

Cette mesure indique le nombre de clés à usage unique utilisées via l’application par les utilisateurs d’Alerte COVID ayant reçu un diagnostic positif de COVID-19. Il s’agit de l’équivalent côté serveur de la mesure [clés à usage unique utilisées](#clés-à-usage-unique-saisies-dans-lapplication) tirée des mesures de performance intégrées à l’application ci-haut.

*   Les données côté serveur sur les clés à usage unique ont été recueillies à partir du 3 octobre 2020. Le total de clés à usage unique utilisées est [publié sur Canada.ca sous « Clés à usage unique utilisées »](https://www.canada.ca/fr/sante-publique/services/maladies/maladie-coronavirus-covid-19/alerte-covid.html#a6).
*   698 clés à usage unique ont été utilisées entre le lancement de l’application (le 31 juillet 2020) et l’introduction de la collecte de données côté serveur sur les clés à usage unique (3 octobre 2020). Ces 698 clés à usage unique sont comptabilisées dans [le total sur Canada.ca](https://www.canada.ca/fr/sante-publique/services/maladies/maladie-coronavirus-covid-19/alerte-covid.html#a6), mais non dans les fichiers ci-dessous.

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>server_otk_claimed.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>server_otk_claimed_pt.<em>periode</em>.csv
   </td>
   <td>par date et PT
   </td>
  </tr>
</table>


### Clés à usage unique générées

Cette mesure représente le nombre de clés à usage unique générées par le personnel de la santé publique des provinces/territoires ou demandées via les systèmes informatiques provinciaux/territoriaux.

*   Dans certains cas, des clés à usage unique peuvent avoir été générées pendant la formation ou des tests effectués par le personnel de santé publique; le nombre de clés à usage unique transmises aux personnes ayant reçu un diagnostic positif de COVID-19 est donc légèrement inférieur.
*   Les données côté serveur sur les clés à usage unique ont été recueillies à partir du 3 octobre 2020.

<table>
  <tr>
   <td>
<strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>server_otk_generated.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>server_otk_generated_pt.<em>periode</em>.csv
   </td>
   <td>par date et PT
   </td>
  </tr>
</table>


## Nombre de téléchargements tiré des boutiques d’applications Apple et Google

### Téléchargements

Cette mesure indique le nombre de téléchargements (par période et cumulatif) d’Alerte COVID, tel qu’affiché dans les boutiques d’applications Apple et Google. Ces données sont également accessibles [dans le catalogue de données de l’Ontario](https://data.ontario.ca/fr/dataset/covid-alert-impact-data).


<table>
  <tr>
   <td><strong>nom de fichier</strong>
   </td>
   <td><strong>agrégation des données</strong>
   </td>
  </tr>
  <tr>
   <td>downloads.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>downloads_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
  <tr>
   <td>cumulative_downloads.<em>periode</em>.csv
   </td>
   <td>par date
   </td>
  </tr>
  <tr>
   <td>cumulative_downloads_os.<em>periode</em>.csv
   </td>
   <td>par date et OS
   </td>
  </tr>
</table>


## Journal des modifications

Les dates ci-dessous représentent des modifications apportées à Alerte COVID qui touchent les données affichées dans ce référentiel. Il ne s’agit pas d’une liste exhaustive des mises à jour de l’application (p. ex., si les mises à jour ne sont pas liées à la fonctionnalité des mesures de performance).

Les modifications apportées aux mesures comprises dans ce référentiel apparaissent généralement plusieurs jours après la publication d’une nouvelle mise à jour de l’application. Les appareils des utilisateurs sont mis à jour vers la dernière version publiée sur une période de 1 à 3 jours (si les mises à jour automatiques sont activées), et les données commencent à apparaître dans ce référentiel le jour suivant.

*   **21 septembre 2021**
    *   Mise à jour du traitement côté serveur des lots volumineux de métriques déployés (les mesures _active_users_ pour Android seront affectées entre le 22 septembre et la mi-novembre en raison d’un problème connu avec les nouvelles tentatives)
*   **1<sup>er</sup> septembre 2021**
    *   Publication de la version 1.5.4 de l’application
        *   Mises à jour du traitement _daily_background_check_completed _pour iOS
*   **10 août 2021**
    *   Publication de la version 1.5.3 de l’application
        *   Correctif pour les mesures de vérifications en arrière-plan pour iOS (affectant les données du 6 août au 10 août 2021)
*   **29 juin 2021**
    *   Publication de la version 1.4.5 de l’application
        *   Ajout des mesures de la gestion des erreurs
*   **22 juin 2021**
    *   Publication de la version 1.4.4 de l’application
        *   Mises à jour concernant le mode d’envoi des métriques _active_users_ par les appareils iOS
*   **7 juin 2021**
    *   Correction d’un problème de traitement en arrière-plan avec les fichiers CSV de clés à usage unique (correction des données du 19 mai au 7 juin 2021)
*   **3 juin 2021**
    *   Publication de la version 1.4.1 de l’application
        *   Mise à jour de la façon dont les mesures _daily_background_check_started_ et _active_users_ sont envoyées par les appareils iOS
*   **25 mai 2021**
    *   Informations contextuelles supplémentaires ajoutées au fichier Lisez-moi
*   **21 mai 2021**
    *   Correction de la destination des mesures de performance pour _daily_background_check_started_ et _daily_background_check_successfully_completed_ pour les appareils iOS
*   **19 mai 2021**
    *   _on_off_ac_ supprimé (cette valeur n’est plus mise à jour)
*   **18 mai 2021**
    *   Publication de la version 1.2.9 de l’application
        *   Mise à jour de la mesure _active_users_ qui s’exécute au début de la vérification en arrière-plan, et si l’application est ouverte manuellement
        *   Les mesures _daily_background_check_started_ et _daily_background_check_successfully_completed_ ajoutées pour les appareils iOS
*   **17 mai 2021**
    *   Mise à jour de la licence du référentiel
*   **26 avril 2021**
    *   Les mesures daily_background_check_started et _daily_background_check_successfully_completed_ ajoutées à ce référentiel de données
*   **23 avril 2021**
    *   Les numéros de version sémantiques de l’application sont affichées dans ce référentiel, plutôt que les numéros de version générées.
*   **22 avril 2021**
    *   Publication de la version 1.2.8 de l’application
        *   Améliorations supplémentaires de la fiabilité des mesures de performance intégrées à l’application sur les appareils Android
*   **21 avril 2021**
    *   Les téléchargements et les téléchargements cumulatifs sont ajoutés à ce référentiel.
*   **15 avril 2021**
    *   Les mesures de performance côté serveur sur les clés à usage unique sont ajoutées à ce référentiel.
*   **9 avril 2021**
    *   Publication de la version 1.2.7 de l’application
        *   Tentative de correction pour la mesure _on_off_ac_ (mesure de performance pour la fonction « désactivation/réactivation »)
        *   Amélioration de la gestion de l’état interne
*   **6 avril 2021**
    *   Publication de la version 1.2.6 de l’application
        *   Améliorations supplémentaires de la fiabilité pour les mesures de performance intégrées à l’application
        *   Correctifs pour la gestion des mesures à l’état « exposé » (notifications d’exposition reçues)
        *   Les notifications d’exposition multiples reçues sont désormais comptabilisées dans les données à l’état « exposé ».
            *   Avec ce changement, quelqu’un peut désormais recevoir une notification d’exposition même si son application est déjà à « l’état exposé ». Ce n’était pas possible avant ce changement.
            *   Cela élargit la mesure « notifications d’exposition envoyées » dans l’application afin d’inclure les appareils « passant » de « l’état exposé » à « l’état exposé » (c.-à-d. qui reçoivent une notification alors que l’application est déjà à l’état exposé).
            *   Nous nous attendons à ce que le nombre de notifications envoyées augmente un peu en raison de l’ajout de la fonctionnalité d’expositions multiples. Cependant, le changement n’a pas forcément causé l’augmentation, car elle peut aussi être attribuée à d’autres facteurs.
*   **30 mars 2021**
    *   Publication de la version 1.2.5 de l’application
        *   Améliorations de la fiabilité des mesures de performance intégrées à l’application
*   **25 mars 2021**
    *   Publication de la version 1.2.4 de l’application
        *   Correctifs pour la gestion des mesures de performance liées aux clés à usage unique (clés à usage unique utilisées)
        *   Statistiques _daily_background_check_started_ et _daily_background_check_successfully_completed_ ajoutées pour les appareils Android
*   **23 mars 2021**
    *   Des sous-répertoires de période quotidienne/hebdomadaire/mensuelle ont été générés, pour faciliter l’accès aux données par période
*   **22 mars 2021**
    *   Des fichiers CSV supplémentaires sont générés
*   **19 mars 2021**
    *   Ce référentiel de données est créé; des fichiers CSV d’essai sont générés
*   **4 mars 2021**
    *   Publication de la version 1.2.2 de l’application
        *   Mises à jour supplémentaires de la communication entre l’application et le serveur
*   **26 février 2021**
    *   Publication de la version 1.2.1 de l’application
        *   Amélioration de la fréquence à laquelle l’application communique les mesures de performance au serveur
*   **9 février 2021**
    *   Publication de la version 1.2.0 de l’application
        *   Lancement initial des mesures de performance intégrées à l’application
        *   Ajout d’une notification unique pour informer les gens des nouvelles mesures collectées et des modifications apportées à l’avis de confidentialité
