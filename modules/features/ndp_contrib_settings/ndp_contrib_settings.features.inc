<?php
/**
 * @file
 * ndp_base_features.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function ndp_contrib_settings_ctools_plugin_api($module, $api) {
  if ($module == 'linkit' && $api == 'linkit_profiles') {
    return array('version' => 1);
  }
  if ($module == 'strongarm' && $api == 'strongarm') {
    return array('version' => 1);
  }
}
