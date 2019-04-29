<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<?php 
/* By: Chris Velazquez 
	 Last Modifed: 26 April 2019
	 Lab 13
	 
	 Link to Run: 
	 https://nrs-projects.humboldt.edu/~civ5/328hw10/number-fun.php 
*/
?>
<head>
    <title> CS328 - HW 1 </title>
    <meta charset="utf-8" />

    <link href="https://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
	<link href="https://nrs-projects.humboldt.edu/~civ5/328hw10/number-fun.css"
          type="text/css" rel="stylesheet" />	  
	<script src="https://nrs-projects.humboldt.edu/~civ5/328hw10/number-fun.js"
			type="text/javascript"></script>
	
</head>

<body>

<h1> 328 hw 1 </h1>
<h2> Christopher Velazquez  cs 328</h2>
<hr/>
<form>
		Number 1: <input type ="text" id ="num1" style="text-align:right;"/>
		Number 2: <input type ="text" id="num2" style="text-align:right;"/>
		<br/>
		<br/>
		<input type="submit" onclick="stuffDone()" value="submit_button" />
</form>






<?php
    require_once( "328footer.html");
?>