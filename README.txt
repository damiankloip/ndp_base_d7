/*
 * Installation/usage
 */

Run the following terminal command once the site files have been downloaded.
Do this in the root of the new site directory.

drush site-install ndp_base --db-url=mysql://username:pass@localhost/databasename

additional paramaters (can be found from 'drush site-install --help'):

 --db-url    A Drupal 5/6 style database URL. Only required for initial install - not re-install.                                               
 --db-prefix  An optional table prefix to use for initial install.                                                                               
 --account-name  uid1 name. defaults to admin                                                                                                       
 --account-pass   uid1 pass. defaults to admin                                                                                                       
 --account-mail   uid1 email. defaults to admin@example.com                                                                                          
 --locale    A short language code. Sets the default site language. Language files must already be present. You may use download command to get them.                                                                                                                              
 --clean-url   Defaults to 1                                                                                                                      
 --site-name   Defaults to Site-Install                                                                                                           
 --site-mail   From: for system mailings. Defaults to admin@example.com                                                                           
 --sites-subdir   Name of directory under 'sites' which should be created. Only needed when the subdirectory does not already exist. Defaults to 'default'  

(drupal 7.9 bug with header generation (cache) see issue http://drupal.org/node/1314392
Download drupal 7.x-dev verison until 7.10 is released. - FIXED)
