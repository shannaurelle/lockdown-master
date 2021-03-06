# lockdown-master

A web app bridging the agricultural gap

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to run the website unto your server and how to install them:


__*Server-side requirements*__
1. [PHP 7.x](https://www.php.net/download-docs.php)
2. [MySQL 5.x](https://www.mysql.com/downloads/)
3. [Apache 2.x](https://httpd.apache.org/download.cgi)


__*Client-side compatibility requirements for web browsers*__


Desktop
1. [Chrome 80+](https://www.google.com/chrome/)
2. [Firefox 70+](https://www.mozilla.org/en-US/firefox/new/)
3. [Safari 5+](https://support.apple.com/downloads/safari) (Not supported on Windows)
3. [Opera 60-70](https://www.opera.com/tl/download)
4. [Internet Explorer 11](https://www.microsoft.com/en-us/download/internet-explorer.aspx) (only supported for Windows users)
5. [Microsoft Edge](https://www.microsoft.com/en-us/edge) (only supported on Windows and Linux)

Smartphones, and tablets, notebooks


You can also download apache distributions like WAMPP, XAMPP, MAMP, and LAMP
1. [WAMPP - for Windows](https://www.wampserver.com/en/download-wampserver-64bits/)
2. [XAMPP - multi-platform](https://www.apachefriends.org/download.html)
3. [MAMP - for MAC OS](https://www.mamp.info/en/downloads/)
4. [LAMP - for Linux distributions](https://bitnami.com/stack/lamp/installer)

### Installing

1. Place the folder into your server folder (that would be htdocs for WAMPP or www for WAMP)
2. Run your server
3. View the website

## Running the tests

For now, tests involving the system include the checkout page of the site.
The system uses a sandbox url of the Paymaya API for online entrprises.
The mock credit/debit cards are given [here](https://mock-processor-sandbox.paymaya.com/cards)


For a dummy buyer login account, use shannaurelle as username and Shann4756 as password.
For the database, import lockdown_storage_final.sql


Credentials include localhost as host, root as username, and password is none
Database name must be lockdown-storage


To test this using localhost, type the link: localhost/lockdown-master/payment-gateway.php


To test this with your custom url, type this instead: www.myurl.com/payment-gateway.php 


## Deployment


Internet connection is needed to support Favicons.


## Built With

* [Bootstrap 4](http://www.dropwizard.io/1.0.2/docs/) - The CSS framework used
* [Composer](https://getcomposer.org/) PHP Dependency Manager
* [Font Awesome 4](https://fontawesome.com/) The icons used
* [JQuery 2.2.4](https://code.jquery.com/) - The JavaScript library used
* [Modernizr.js](https://maven.apache.org/) - Feature Detection libary for HTML/CSS/Javascript
* [SajuGuju Minimal PSD E-commerce Template](https://themeforest.net/item/sajuguju-minimal-psd-ecommerce-template/21381396) - UX/UI template

## Contributing

Please read [CONTRIBUTING.md]() for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Shann Aurelle Ripalda** - *Initial work* - [Shann Aurelle Ripalda](https://github.com/shannaurelle)
* **Michael Sean Brian Omisol** - *Initial work* - [FlamingHerb](https://github.com/FlamingHerb)
* **Hans C. Gonzaga** - *Concept and Planning*

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project has no license.
All rights and content are reserved to the authors.

## Acknowledgments

* Hat tip to the authors for the effort and contribution
* Thanks for our Accenture Hackathon mentors Sir Castee, Sir Nino, and Sir Tristan for the inputs provided 

