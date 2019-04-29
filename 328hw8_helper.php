<?php

   /* by: Christopher Velazquez
    last modified: 4/7/19
	*/
	
	
/*
	nothing -> nothing
	make_form description:
	takes what the user inputs, does nothing else
*/	
function make_form()
{

?>

<form method="get" action="<?=htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES) ?>">	
	<label for="user-name"> User-Name: </label>
	<input type="text" id="user-name" name="user-name"/>
		
		

	<br/>
	<label> Password:
	<input type="password" name="secret_word"/>		
	</label>
	
    <hr />
	
	<input type="submit" name="submitted" value="submit" />
</form>
	
	
<?php	
}
/*
nothing -> nothing
make_response description:
outputs the users inputs to the screen
*/
function make_response()
{
	$username = "";
	$pass = "";

    if (array_key_exists("user-name", $_GET))
    {

        $username = strip_tags($_GET["user-name"]);
    }

    if (array_key_exists("secret_word", $_GET))
    {
        $pass = strip_tags($_GET["secret_word"]);
    }
		$sql = "select sum(pub_id), pub_name
				from publisher
				group by pub_city";
				
		$hsu = hsu_conn($username, $pass);
		if ($result = mysqli_query($hsu, $sql))
		{
			
		
		?>
    <p> 
		<?php 
			printf("Select returned %d rows.\n", mysqli_num_rows($result));
			mysqli_free_result($result);
		}
		?> 
	</p>
    <?php
	oci_close($hsu);
}
	?>