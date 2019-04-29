<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    by: Christopher Velazquez
    last modified: 4/7/19

    you can run this using the URL:
	http://nrs-projects.humboldt.edu/~civ5/328hw8/bks-select.php

-->

<head>
    <title> bks-select.php </title>
    <meta charset="utf-8" />

    <link href="http://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
	<?php
        ini_set('display_errors', 1);
        error_reporting(E_ALL);

        require_once("328hw8_helper.php");
		require_once("hsu_conn.php");
    ?>
</head>

<body>
	<h1> 328 hw8 </h1>
	<h2> Christopher Velazquez CS 328 </h2>
	<p> BooKeepers </p>
	
	<?php
    if (! array_key_exists("submitted", $_GET))
    {
        make_form();
    }
    else
    {
        make_response();
    }
    ?>

    <hr />

    <p>
        Validate by pasting .xhtml copy's URL into<br />
        <a href="https://html5.validator.nu/">
            https://html5.validator.nu/
        </a>
    </p>

    <p>
        <a href=
           "http://jigsaw.w3.org/css-validator/check/referer?profile=css3">
            <img src="http://jigsaw.w3.org/css-validator/images/vcss"
                 alt="Valid CSS3!" height="31" width="88" />
        </a>
    </p>

</body>
</html>