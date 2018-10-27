<?php

$server = "localhost";
$user = "root";
$password = "";
$db = "blog";
$db = mysqli_connect($server, $user, $password, $db);
if ( !$db) {
	die("Gagal Terhubung dengan DB: " . mysqli_connect_error());
}

$sql = ("SELECT posts.id,
				posts.title,
				users.id,
				users.username,
				comments.id,
				comments.comment FROM posts LEFT JOIN users using(id) LEFT JOIN comments on posts.id = comments.postId");
			$query = mysqli_query($db, $sql);
			while($posts = mysqli_fetch_array($query)) {
				echo "<ul>";
				echo "<li> Posts.title : " .$posts['title']."</li>";
				echo "<li> posts.users.username  : Dibuat Oleh " .$posts['username']."</li>";
				echo "<li> comments : " ."</li>";
				echo "<ol>". $posts['comment']."</ol>";
				echo "</ul>";

			}




?>
