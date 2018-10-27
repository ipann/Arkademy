<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <title>Responsive DropDown</title>
     <link rel="stylesheet" href="style.css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
</head>
<body>
	<div class="page">
		<span class="menu_toggle">
			<i class="menu_open fa fa-bars" ></i>
			<i class="menu_close fa fa-times"  ></i>
		</span>

          <ul class="menu_items">
               <li><a href="#">Home</a></li>
               <li><a href="#">About</a></li>
               <li><a href="#">Contact</a></li>
          </ul>

          <main class="content">
               <div class="content_inner">
                    <h1>Responsive Animated Off Canvas Menu</h1>
                    <p>
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
                    comments.comment FROM posts LEFT JOIN users using(id) LEFT JOIN comments using(id)");
               $query = mysqli_query($db, $sql);
               while($posts = mysqli_fetch_array($query)) {
                    echo "<ul>";
                    echo "<li> Posts.title : " .$posts['title']."</li>";
                    echo "<li> posts.users.username  : Dibuat Oleh " .$posts['username']."</li>";
                    echo "<li> comments : " ."</li>";
                    echo "<ol>". $posts['comments']."</ol>";

                    
                    echo "</ul>";

               }




?>

                    </p>
               </div>
          </main>
     </div>
	

<script type="text/javascript">
	
     var $page = $('.page');

     $('.menu_toggle').on('click', function() {
          $page.toggleClass('shazam');
     });

     $('.content').on('click', function() {
          $page.removeClass('shazam');
     });
</script>
</body>
</html>