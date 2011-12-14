Run the following terminal command once the site files have been downloaded.
Do this in the root of the new site directory.

drush site-install ndp_base --db-url=mysql://username:pass@localhost/databasename

additional paramaters:

global site details:
--site-name=SITE_NAME
--site-mail=SITE_MAIL

user 1 account details:
--account-name=NAME
--account-pass=PASS
--account-mail=MAIL
