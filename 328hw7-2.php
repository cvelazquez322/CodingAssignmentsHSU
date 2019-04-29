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
	http://nrs-projects.humboldt.edu/~civ5/328hw7/328hw7-2.php
-->

<head>
    <title> 328 hw 7-2 </title>
    <meta charset="utf-8" />

    <link href="http://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
</head>

<body>
	<h1> 328 hw 7-2 PHP exercise </h1>
	<h2> Christopher Velazquez </h2>
	<h2> this is rand practice, between 0 and 50 </h2>
	<p>
		<ul>
			<?php 
				for($i=0; $i<5; $i++)
				{
			?>
			<li>
			<?php
					echo(rand(0, 50));
			?>
			</li>	
			<?php
				}
			?>
		</ul>
	</p>
	<p>
		Printing 30/9 to 5 decimal places
		<?=
			sprintf("%.5f", 30/9) 
		?>
		
	</br>
	
		Printing 25/7 to 2 decimal places
		<?=
			sprintf("%.2f", 25/7) 
		?>
	</p>
	<h2> Array and ForEach practice </h2>
	<?php
		$things_in_my_room = array("monitor", "Jessica rabbit painting", "page from book",
									"lamp", "white board", "rowing machine", "laptop",
									"chrome book", "keys", "stapler");
	?>
	<ul>
		<?php
			foreach($things_in_my_room as $value)
			{
		?>
		<li>
			<?php
					echo($value);
			?>
		</li>	
		<?php
			}
		?>
	</ul>
	
	

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