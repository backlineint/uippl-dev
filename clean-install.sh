#!/bin/bash

lando start

lando drush si standard -y --db-url='mysql://drupal8:drupal8@database/drupal8' --site-name='UIPPL Dev' --account-name=admin --account-pass=admin

# composer install UIPPL

# Enable module, enable theme

# Install required modules and themes
# Todo - install with config instead.

# lando drush en -y components ui_patterns

