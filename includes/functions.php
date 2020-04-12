<?php
	//This file is the place to store all basic functions

	function confirm_query ($result_set) {
		if (!$result_set) {
		    printf("Database query failed: %s\n", mysqli_error($connection));
	}}

	function get_all_subjects() {
		global $connection; 
		$query = "SELECT * 
		FROM Subjects 
		ORDER BY position ASC";
		$subject_set = mysqli_query($connection,$query );
		confirm_query ($subject_set);
		return $subject_set;
	}
	
	function get_pages_for_subject($subject_id){
		global $connection; 
		$sql = "SELECT * 
		FROM pages 
		WHERE subject_id = {$subject_id} 
		ORDER BY position ASC";
		//.$subject_id ;
		//print_r($sql);
		//die();
		$page_set = mysqli_query($connection, $sql);
		//$page_set = mysqli_query($connection, "SELECT * FROM pages WHERE subject_id = {$subject['id']} ," );
		confirm_query ($page_set);
		return $page_set;
	}
?>
