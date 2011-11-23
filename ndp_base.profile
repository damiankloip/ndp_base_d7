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
		'name' => 'NDP Base',
		'description' => 'NDP Base installation profile for Drupal 7',
	);
}

/**
 * Implements hook_ctools_plugin_api().
 */
function ndp_base_ctools_plugin_api($module, $api) {
  if ($module == 'strongarm' && $api == 'strongarm') {
    return array('version' => 1);
  }
}

/**
 *
 */
function ndp_base_modules() {
	$modules = array(
		
	);
	
	return $modules;
}

/**
 * Implementation of hook_form_alter().
 */
function system_form_install_configure_form_alter(&$form, $form_state, $form_id) {
	$form['admin_account']['account']['name']['#default_value'] = 'admin';
	$form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  $form['site_information']['site_mail']['#default_value'] = 'webmaster@' . $_SERVER['SERVER_NAME'];
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@' . $_SERVER['SERVER_NAME'];
}

/**
 * Implements hook_install_tasks().
 */
function ndp_base_install_tasks() {
/*
Return an array of tasks to be performed by an installation profile.

Any tasks you define here will be run, in order, after the installer has finished the site configuration step but before it has moved on to the final import of languages and the end of the installation. You can have any number of custom tasks to perform during this phase.

Each task you define here corresponds to a callback function which you must separately define and which is called when your task is run. This function will receive the global installation state variable, $install_state, as input, and has the opportunity to access or modify any of its settings. See the install_state_defaults() function in the installer for the list of $install_state settings used by Drupal core.

At the end of your task function, you can indicate that you want the installer to pause and display a page to the user by returning any themed output that should be displayed on that page (but see below for tasks that use the form API or batch API; the return values of these task functions are handled differently). You should also use drupal_set_title() within the task callback function to set a custom page title. For some tasks, however, you may want to simply do some processing and pass control to the next task without ending the page request; to indicate this, simply do not send back a return value from your task function at all. This can be used, for example, by installation profiles that need to configure certain site settings in the database without obtaining any input from the user.

The task function is treated specially if it defines a form or requires batch processing; in that case, you should return either the form API definition or batch API array, as appropriate. See below for more information on the 'type' key that you must define in the task definition to inform the installer that your task falls into one of those two categories. It is important to use these APIs directly, since the installer may be run non-interactively (for example, via a command line script), all in one page request; in that case, the installer will automatically take care of submitting forms and processing batches correctly for both types of installations. You can inspect the $install_state['interactive'] boolean to see whether or not the current installation is interactive, if you need access to this information.

Remember that a user installing Drupal interactively will be able to reload an installation page multiple times, so you should use variable_set() and variable_get() if you are collecting any data that you need to store and inspect later. It is important to remove any temporary variables using variable_del() before your last task has completed and control is handed back to the installer.
Return value

A keyed array of tasks the profile will perform during the final stage of the installation. Each key represents the name of a function (usually a function defined by this profile, although that is not strictly required) that is called when that task is run. The values are associative arrays containing the following key-value pairs (all of which are optional):

    'display_name' The human-readable name of the task. This will be displayed to the user while the installer is running, along with a list of other tasks that are being run. Leave this unset to prevent the task from appearing in the list.
    'display' This is a boolean which can be used to provide finer-grained control over whether or not the task will display. This is mostly useful for tasks that are intended to display only under certain conditions; for these tasks, you can set 'display_name' to the name that you want to display, but then use this boolean to hide the task only when certain conditions apply.
    'type' A string representing the type of task. This parameter has three possible values:

        'normal': This indicates that the task will be treated as a regular

    callback function, which does its processing and optionally returns HTML output. This is the default behavior which is used when 'type' is not set.
        'batch': This indicates that the task function will return a batch

    API definition suitable for batch_set(). The installer will then take care of automatically running the task via batch processing.
        'form': This indicates that the task function will return a standard

    form API definition (and separately define validation and submit handlers, as appropriate). The installer will then take care of automatically directing the user through the form submission process.
    'run' A constant representing the manner in which the task will be run. This parameter has three possible values:

        INSTALL_TASK_RUN_IF_NOT_COMPLETED: This indicates that the task will

    run once during the installation of the profile. This is the default behavior which is used when 'run' is not set.
        INSTALL_TASK_SKIP: This indicates that the task will not run during

    the current installation page request. It can be used to skip running an installation task when certain conditions are met, even though the task may still show on the list of installation tasks presented to the user.
        INSTALL_TASK_RUN_IF_REACHED: This indicates that the task will run

    on each installation page request that reaches it. This is rarely necessary for an installation profile to use; it is primarily used by the Drupal installer for bootstrap-related tasks.
    'function' Normally this does not need to be set, but it can be used to force the installer to call a different function when the task is run (rather than the function whose name is given by the array key). This could be used, for example, to allow the same function to be called by two different tasks.
*/

}