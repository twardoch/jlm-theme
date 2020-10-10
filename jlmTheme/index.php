<?php

/**
 * @defgroup plugins_themes_jlmTheme JLM theme plugin
 */

/**
 * @file plugins/themes/jlmTheme/index.php
 *
 * Copyright (c) 2020 Adam Twardoch
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_jlmTheme
 * @brief Wrapper for JLM theme plugin.
 *
 */

ini_set('display_errors', 0); // TODO
error_reporting(E_ERROR); // TODO

require_once('JLMThemePlugin.inc.php');

return new JLMThemePlugin();

?>
