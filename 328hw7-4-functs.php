<?php

   /* by: Christopher Velazquez
    last modified: 3/31/19
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
	<fieldset>
		<label>
			<input type = "checkbox" name="useless_state1" value="North Carolina" /> North Carolina
		</label>
		</br>
		<label>
			<input type = "checkbox" name="useless_state2" value="South Carolina" /> South Carolina
		</label>
		</br>
		<label>
			<input type = "checkbox" name="useless_state3" value="Iowa" /> Iowa
		</label>
		</br>
		<label>
			<input type = "checkbox" name="useless_state4" value="Alabama" /> Alabama
		<label>
	</fieldset>
	
	</br>
	
	<select>
		<label> Do you sleep with the lights on?
		<option value ="yes" name="yes1"> yes </option>
		<option value ="no" name="no1"> no </option>
		</label>
	</select>
	
	<textarea rows = "20" cols="40" name="textarea1">
		please enter something
	</textarea>
	
	<label> 
	<input type="number" name="num_field"/> enter a number
	</label>
	
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
	$selected = "You selected:";

    if (array_key_exists("useless_state1", $_GET))
    {

        $selected .= " North Carolina,";
    }

    if (array_key_exists("useless_state2", $_GET))
    {
        $selected .= " South Carolina,";
    }

    if (array_key_exists("useless_state3", $_GET))
    {
        $selected .= " Iowa,";
    }

    if (array_key_exists("useless_state4", $_GET))
    {
        $selected .= " Alabama,";
    }

	
	if(array_key_exists("yes1", $_GET))
	{
		$selected .= " you sleep with the lights on,";
	}
	if(array_key_exists("no1", $_GET))
	{
		$selected .= " you sleep with the lights off,";
	}
	
	if(array_key_exists("textarea1", $_GET))
	{
		$selected .= " you wrote something in the text area,";
	}
	
	if(array_key_exists("num_field", $_GET))
	{
		$selected .= " you entered the number: ";
		$selected .= strip_tags($_GET["num_field"]);
	}	
		
		?>
    <p> <?= $selected ?> </p>
    <?php
}
	?>