#!/bin/bash

git reset --hard HEAD

lando start

composer install

lando drush si standard -y --db-url='mysql://drupal8:drupal8@database/drupal8' --site-name='UIPPL Dev' --account-name=admin --account-pass=admin

# Latest Tagged Release
# composer require 'drupal/ui_patterns_pattern_lab'

# Dev
composer require 'drupal/ui_patterns_pattern_lab:1.x-dev'

lando drush en -y components ui_patterns_pattern_lab components

lando drush theme:enable -y ui_patterns_pattern_lab_sandbox

lando drush cset system.theme default ui_patterns_pattern_lab_sandbox -y

lando drush cr

lando behat


