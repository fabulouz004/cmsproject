<?php require_once("includes/functions.php");?>
<?php require_once("includes/connection.php");?>
<?php include("includes/header.php");?>
<table id="structure">
	<tr>
		<td id="navigation">
		<ul class = "subjects">
		<?php
		// 3. Perform database query
		$subject_set = mysqli_query($connection, "SELECT * FROM Subjects", );
		if (!$subject_set) {
		    printf("Database query failed: %s\n", $mysqli->error);
		}
		
		// 4. Use returned data
		while ($subject = mysqli_fetch_array($subject_set)) {
			echo "<li> {$subject["menu_name"]} <li />";
		}

				// 3. Perform database query
		$page_set = mysqli_query($connection, "SELECT * FROM pages WHERE subject_id = {$subject['id']} ," );
		if (!$page_set) {
		    printf("Database query failed: %s\n", $mysqli->error);
		}
		
		echo "<ul class = 'pages'>";
		// 4. Use returned data
		while ($page = mysqli_fetch_array($page_set)) {
			echo "<li> {$page["menu_name"]} <li />";
		}
		echo "</ul>";

		?>
		</ul>
		</td>
		<td id="page">
			<h2>Content Area</h2>
			
		</td>
	</tr>
</table>
<?php require("includes/footer.php"); ?>
