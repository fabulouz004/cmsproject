<?php require_once("includes/connection.php"); ?>
<?php require_once("includes/functions.php"); ?>
<?php
	$errors = array();
	// form validation
	$required_fields = array('menu_name', 'position', 'visible');
	foreach($required_fields as  $fieldname){
		if(!isset($_POST[$fieldname]) || empty ($_POST [$fieldname])){
		$errors [] = $fieldname;
	}
	$field_with_lengths=array('menu_name'=> 30);
	foreach($field_with_lengths as $fieldname => $maxlength){
		if(strlen(trim(mysqli_prep($_POST[$fieldname]))) > $maxlength){
			$error[]=$fieldname;
		}
	}

	if (!empty($errors)){
		redirect_to("new_subject.php");
	}
}
?>
<?php
	$menu_name = mysqli_prep($_POST['menu_name']);
	$position = mysqli_prep($_POST['position']);
	$visible = mysqli_prep($_POST['visible']) ;
?>
<?php
	$query = "INSERT INTO subjects (
				menu_name, position, visible
			) VALUES (
				'{$menu_name}', {$position}, {$visible}
			)";
	$result = mysqli_query( $connection, $query);
	if ($result) {
		// Success!
		header("Location: content.php");
		exit;
	} else {
		// Display error message.
		echo "<p>Subject creation failed.</p>";
		echo "<p>" . mysqli_error() . "</p>";
	}
?>

<?php mysql_close($connection); ?>