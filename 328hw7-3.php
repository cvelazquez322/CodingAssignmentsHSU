<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- REMOVE THIS COMMENT when using this template!
     ================================================
     note: this template was last modified 2019-02-09.
     It is especially possible that it may be updated.
-->

<!--
    by: Christopher Velazquez
    last modified: 3/31/19

    you can run this using the URL:
	http://nrs-projects.humboldt.edu/~civ5/328hw7/328hw7-3.php
-->

<head>
    <title> 328 hw 7-3 </title>
    <meta charset="utf-8" />



    <link href="http://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
</head>

<body>
	<h1> hw 7-3 </h1>
	<h2> Christopher Velazquez </h2>
	<form action="<?= htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES) ?>"
		method="post">
		
		number field:
		</br>
		<input type="number" name="num_field"> 
		</br>
		text field that will be ouputted based on num_field:
		</br>
		<input type="text" name="tex_field">
		</br>
		<input type="submit" value="Submit">
	</form>
	
	<?php
		$num_entered = strip_tags($_POST["num_field"]);
		$tex_entered = strip_tags($_POST["tex_field"]);
		for($i =0; $i< $num_entered; $i++)
		{
				echo($tex_entered);
		}
	
	
	?>
	<p>
		http://nrs-projects.humboldt.edu/~civ5/328hw7/328hw7-3.php
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