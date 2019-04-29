<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


<!--
    by: Christopher Velazquez
    last modified: 3/31/19

    you can run this using the URL:
	http://nrs-projects.humboldt.edu/~civ5/328hw7/328hw7-4.php
-->

<head>
    <title> hw 7-4 </title>
    <meta charset="utf-8" />

	<?php
        ini_set('display_errors', 1);
        error_reporting(E_ALL);

        require_once("328hw7-4-functs.php");
    ?>


    <link href="http://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
</head>

<body>
	<h1> last problem </h1>
	<h2> Christopher Velazquez </h2>
	<p>  <?php
    if (! array_key_exists("submitted", $_GET))
    {
        make_form();
    }
    else
    {
        make_response();
    }
    ?>
	</p>
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