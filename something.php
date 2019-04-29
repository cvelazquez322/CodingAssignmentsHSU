<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    
	By: Emily Oparowski
	Last Modified: 7 April 2019

    you can run this using the URL:
http://nrs-projects.humboldt.edu/~ero9/hw8/need-an-order.php
-->

<head>
    <title> HW8 - need-an-order </title>
    <meta charset="utf-8" />

    <?php
       ini_set('display_errors', 1);
       error_reporting(E_ALL);
	   
	   require_once("hsu_conn.php");
	   require_once("need-order-form.php");
    ?>

    <link href=
        "http://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
        type="text/css" rel="stylesheet" />

    <link href="bks.css" type="text/css"   
          rel="stylesheet" />
</head>

<body>
	
	<h1> CS 328 - HW8 </h1>
	
	<h2> Emily Oparowski </h2>
	
	<hr />

	<h1> Emmi's Coffee Bookshop </h1>

	<?php
    // do you need to ask for username and password?

    if ( ! array_key_exists("username", $_POST) )
    {   
		need_order_form();	
    }      

    else
    {

        $username = strip_tags($_POST["username"]);

        $password = $_POST["password"];

        $conn = hsu_conn($username, $password);

        // exit if could not connect

        if (! $conn)
        {
        ?>
            <p> Could not log into Oracle, sorry </p>

            <?php
            require_once("328footer.html");
            exit;
        }
 
        // if I reach here -- I connected!!
     	
        $proc_call_string = 'BEGIN insert_order_needed(:new_ISBN_num, :new_quant_num); END;';

        $proc_call_stmt = oci_parse($conn, $proc_call_string);
		
		$new_ISBN_num = strip_tags($_POST['ISBNlist']);
        $new_quant_num = strip_tags($_POST['quantity']);
		
		//set bind variables 
        oci_bind_by_name($proc_call_string, ":new_ISBN_num", $new_ISBN_num);

        oci_bind_by_name($proc_call_string, ":new_quant_num", $new_quant_num);
		
		oci_execute($proc_call_stmt, OCI_DEFAULT);
		
		if (! $proc_call_stmt)
        {
            ?>
            <p> SORRY, no rows inserted! </p>
            <?php
        }
        else
        {
            // committing this successful insertion

            oci_commit($conn);   

            ?> 
            <p> 1 row inserted! </p>
            <?php
        }
		
		
		
		oci_free_statement($proc_call_stmt);
        oci_close($conn);
    }
	require_once("328footer.html");
    ?>

</body>
</html>