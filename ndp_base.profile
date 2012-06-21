<?php

/**
 * @file
 * NDP Base D7 installation profile.
 */

/**
 * Implements hook_profile_details().
 */
function ndp_base_profile_details() {
	return array(
		'name' => "NDP Base",
		'description' => "NDP Base installation profile for Drupal 7",
	);
}

/**
 * Implementation of hook_form_alter().
 */
function ndp_base_form_install_configure_form_alter(&$form, $form_state) {
	$form['admin_account']['account']['name']['#default_value'] = 'admin';
 	$form['admin_account']['account']['mail']['#default_value'] = '';
	$form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  $form['site_information']['site_mail']['#default_value'] = '';
	$form['server_settings']['site_default_country']['#default_value'] = 'GB';
	$form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/London';
}
