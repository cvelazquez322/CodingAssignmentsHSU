<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    by: Emily Oparowski
    last modified: 7 April 2019

    you can run this using the URL:
	http://nrs-projects.humboldt.edu/~ero9/hw8/need-order-form.php
-->

<head>
    <title> CS328 - HW8 </title>
    <meta charset="utf-8" />

    <link href="http://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
		  
	<link href="http://nrs-projects.humboldt.edu/~ero9/hw6/bks.css"
          type="text/css" rel="stylesheet" />
		  
</head>

<body>

	
	<br />

	<h1> CS 328 - Homework 8 </h1>
	
	<h2> Emily Oparowski </h2> 
	
	<hr />

	<h1> Emmi's Coffee Bookshop </h1>
	
	<?php
	function need_order_form() 
	{
	?>
	
	<form method="post" id="ISBN" action="<?= htmlentities($_SERVER['PHP_SELF'],ENT_QUOTES) ?>">

	<fieldset id="userpass">
		
		<label> Username: 
			<input type="text" name="username" required="required" />
		</label>
	
		<label id="passwordlab"> Password:
			<input type="password" name="password" required="required" />
		</label>
		
	</fieldset>
		
	<fieldset id="submitbutton"> 
	
		<legend> Please Submit Here </legend>
		<input type="submit" name="submit "value="Submit" id="subbutton" />
	
	</fieldset>
	
	</form>
	
		<label> ISBN number: 
		<select name="ISBNlist" form="ISBN">
			<option value="0805343024">0805343024</option>
			<option value="0201144719">0201144719</option>
			<option value="0201117363">0201117363</option>
			<option value="025602796X">025602796X</option>
			<option value="0131892428">0131892428</option>
			<option value="0024154334">0024154334</option>
			<option value="0805346317">0805346317</option>
			<option value="0070366955">0070366955</option>
		</select>
		</label>
		
		<label> Order Quantity
			<input type="number" name="quantity" />
		</label> 
		
		<br />
		<br />
	<?php
	}
	?>
	
    <hr />

</body>
</html>