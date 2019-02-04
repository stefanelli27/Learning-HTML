

<form action="Reservations.jsp" method="get">
<%

// Grab the variables from the form.
  String firstName = request.getParameter("firstName");
  String lastName = request.getParameter("lastName");
  String arrivaldate = request.getParameter("arrivalDate");
  String departureDate = request.getParameter("departureDate");
String NumofAdults = request.getParameter("NumofAdults");
String NumofChildren = request.getParameter("NumofChildren");
String Email = request.getParameter("Email");
String Questions/Comments = request.getParameter("Questions/Comments");
%>


<!DOCTYPE html>
<html>
	<head>
	<!-- defines the meta data of a HTML document -->
	<!-- the content type is html and the website title is the website project -->

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>Website Project</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		
	<!-- type of style in html code  -->	
<style type="text/css">



			:root a[rel="nofollow"],
			:root .tooltip + div[style="height:90px;"],
			:root #mainLeaderboard

	<!-- content in page has a max width of 980px, the image has a max width of 100% aligned in
the middle with light grey text, the display is in the middle and the padding is only 12px
the font size is 48px and the headers for each header is segoe UI or arial while the letter spacing
is 4px, the navigation buttons on the pages are displayed in gray and the hover is a background of cyan
  -->

		.content{max-width:980px;margin:auto}.w3-rest{overflow:hidden}
			.image{max-width:100%;height:auto}img{vertical-align:middle}a{color:inherit}
			.light-grey-txt{color:#000000!important}
			.display-middle{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%)}
			.padding{padding:12px 24px!important}
			.xxxlarge{font-size:48px!important}
			.border{border:1px solid #ccc!important}
			 h1,h2,h3,h4,h5,h6{font-family:"Segoe UI",Arial,sans-serif;font-weight:400;margin:10px 0}
			.wide{letter-spacing:4px}
			.nav-button{display:inline-block;padding:8px 16px;vertical-align:middle;overflow:hidden;color:inherit;background-color:#f1f1f1;text-align:center;cursor:pointer;white-space:nowrap})
			.nav-button:hover{color:cyan;background-color:cyan}
		</style>
<!-- the page has a max width of 500px so it does not move when sizing the page -->

<style>
.content {
    max-width: 500px;
    margin: auto;
}
</style>
<body>


	</head>
	
	<body>
		<!-- Header -->
		<header class="content" align = "center" style="max-width:1000px">
		
	<!-- image displayed on each page of our website -->

	<img class="image" src="https://icdn6.themanual.com/image/themanual/bahamas-header-coastline-getty-800x800.jpg" width="1500" height="600">

	<!-- the text in the center is the name of our company displayed in gray with xxxlarge text -->

	<div class="display-middle padding border wide light-grey-txt" align = "center">
			<h1 class="xxxlarge">M | J </h1>
			<h3>RESORT</h3>
		</div>
 
		<!--Navbar-->
		 


<!-- the nav bar is the navigation bar where we put each button to follow to the next page -->


<div align = "center" style="bottom:-16px">
<h3>

<a href="file:///C:/Users/Marija%20Karalioska/Desktop/Home.html" class="nav-button">Home</a>
<a href= "file:///C:/Users/Marija%20Karalioska/Desktop/About.html">About</a>
<a href= "file:///C:/Users/Marija%20Karalioska/Desktop/Rooms.html" class="nav-button">Rooms</a>
<a href= "file:///C:/Users/Marija%20Karalioska/Desktop/Reservations.html" class="nav-button">Reservations</a>

		
</div>
		
		</header>


<body>
<style>

input[type=text], select, textarea {
    width: 100%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
    background-color: #A9A9A9;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, lighter gray color */
input[type=submit]:hover {
    background-color: #D3D3D3;
}

/* Add a background color and some padding around the form */
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

</style>

<!-- div class set as an action page -->

<div class="container">
  <form action="action_page.php">


<!-- first name input -->
    <label for="fname">First Name:</label>
    <input type="text" id="fname" name="firstname" placeholder="Enter First Name">


<!-- last name input -->

    <label for="lname">Last Name:</label>
    <input type="text" id="lname" name="lastname" placeholder="Enter Last Name">


<div style="padding-bottom: 18px;">Arrival Date:<span style="color: red;"> *</span><br/>
<input type="text" id="data_6" name="data_6" style="width : 250px;" class="form-control"/>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/pikaday.min.js" type="text/javascript"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/css/pikaday.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">new Pikaday({ field: document.getElementById('data_6') });</script>
<div style="padding-bottom: 18px;">Departure Date:<span style="color: red;"> *</span><br/>
<input type="text" id="data_7" name="data_7" style="width : 250px;" class="form-control"/>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/pikaday.min.js" type="text/javascript"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/css/pikaday.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">new Pikaday({ field: document.getElementById('data_7') });</script>
<div style="padding-bottom: 18px;">Number of Adults:<span style="color: red;"> *</span><br/>
<input type="number" id="data_8" name="data_8" style="width : 250px;" class="form-control"/>
</div>

<div style="padding-bottom: 18px;">Number of Children:<br/>
<input type="number" id="data_9" name="data_9" class="form-control"/>
</div>

<!-- email input -->

 <label for="Email">Email:</label>
    <input type="text" id="Email" name="Email" placeholder="Enter Email Address">


<!-- subject input where you write what services you would like -->
    <label for="subject">Questions/Comments:</label>
    <textarea id="subject" name="subject" placeholder="Comments..." style="height:200px"></textarea>


<!-- submit button -->

    <input type="submit" value="Submit">

  </form> <!-- end of form -->
</div>

</body>




