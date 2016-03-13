<?php defined('SYSPATH') OR die('No direct access allowed.');
/**
 * @package  Core
 *
 * Sets the default route to "welcome"
 */
$config['_default'] = 'faculty_auth';

/**
 * FACULTY ROUTES
 */
$config['home'] = 'faculty';

/**
 * EVALUATOR ROUTES
 */

$config['evaluator/home'] = 'evaluator';
$config['evaluate/([0-9]+)'] = 'evaluator/$1';
$config['save-evaluation'] = 'evaluator/save';