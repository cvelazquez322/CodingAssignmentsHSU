<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">



<!--
    by: Christopher Velazquez
    last modified: 4/22/19

    you can run this using the URL:
	http://nrs-projects.humboldt.edu/~civ5/328hw9/custom-session1.php
-->

<head>
    <title> 328 hw 9-3 </title>
    <meta charset="utf-8" />

<?php
	 require_once("create_login.php");
	 require_once("hsu_conn_sess.php");
	 require_once("destroy_and_exit.php");
?>

    <link href="https://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
	<link href="custom.css" type="text/css"   
          rel="stylesheet" />	

</head>

<body>
	<h1> 328 hw 9-3 </h1>
	<h2> Christopher Velazquez CS 328 </h2>
	<h1> BooKeepers </h1>
	
	

<?php
	    if (! array_key_exists('next-stage', $_SESSION))
    {
        create_login();
        $_SESSION['next-stage'] = 'next_func';
    }
	elseif ($_SESSION['next-stage'] == 'next_func')
	{
		
	}

	require_once("328footer.html");
?>