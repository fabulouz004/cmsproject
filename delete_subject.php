<?php require_once("includes/connection.php"); ?>
<?php require_once("includes/functions.php"); ?>
<?php
    if (intval($_GET['subj']) == 0) {
			redirect_to("content.php");
    }
    $id = mysqli_prep($_GET['subj']);

    if($subject = get_subject_by_id($id)){
$query = "DELETE FROM subjects WHERE id = {$id} LIMIT 1";
        $result = mysqli_query($connection, $query); 
        if (mysqli_affected_rows($connection)  == 1){
            redirect_to("content.php");
        }else{
            //Deletion Failed
            echo "<p> Subject deletion failed</p>";
            echo "<p>" .mysqli_error(). "</p>";
            echo "<a href = \"content.php\"> Return to the main page</a>";
        }
    }else{
        // subject does not exist
        redirect_to("content.php");
    }
?>
<?php mysql_close($connection); ?>