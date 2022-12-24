<?php
	$bdServername = "localhost";
	$dbUsername = "kalum";
	$dbPassword = "4IQxVzWPiJWU";
	$dbName = "kalum_DB";
	$conn = mysqli_connect($bdServername, $dbUsername, $dbPassword, $dbName);
?>
<!DOCTYPE >
<html>
<head>
<style>
		body {
			background-color: #CFB87C;
			background:url('<?php $a=array('Pets.jpg');echo $a[array_rand($a)];?>');
		}
		h1 {
			text-align: center;
			font-family: "Arial";
			font-weight: bold;
			text-transform: uppercase;
		}
		p {
			text-align: center;
			font-family: "Arial";
		}
	</style>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<h1>Welcome to Pet Shelter Database Page for CSCI 3287</h1>
    <p>If you are trying to reach Pet Shelter Company webpage, navigate to https://csci3287.cse.ucdenver.edu/~username/username_DB. </p>
    <p>If you require technical assistance or would like to report an issue with this server, please contact cedchelp@ucdenver.edu.</p>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
<?php
	if ($conn===false){
		echo ("connection error:" . mysqli_connect_error());
	}
//pets medical service	
$sql = "SELECT * FROM `PET_MED_SERV`";
	if($result = mysqli_query($conn, $sql)){
		if (mysqli_num_rows($result)>0){
			echo"<h2>PET_MED_SERV</h2>";
			echo"<table class='table table dark table-striped'>";
				echo"<thead>";
					echo"<tr>";
						echo"<th>Name</th>";
						echo"<th>Procedures</th>";
						echo"<th>DateofService</th>";
					echo"</tr>";
				echo"</thead>";
			while($row = mysqli_fetch_assoc($result)){
				echo"<tbody>";
					echo"<tr>";
						echo"<td>".$row['Name']."</td>";
						echo"<td>".$row['Procedures']."</td>";
						echo"<td>".$row['DateofService']."</td>";

					echo"</tr>";
				echo"<tbody>";	
		}
		echo"</table>";
		mysqli_free_result($result);
	}else{
		echo"no records matching .";

	}
}else{
	echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}

//SERVICE_COST_YEAR	
$sql = "SELECT * FROM `SERVICE_COST_YEAR`";
	if($result = mysqli_query($conn, $sql)){
		if (mysqli_num_rows($result)>0){
			echo"<h2>SERVICE_COST_YEAR</h2>";
			echo"<table class='table table dark table-striped'>";
				echo"<thead>";
					echo"<tr>";
						echo"<th>Procedures</th>";
						echo"<th>count(Procedures)</th>";
						echo"<th>sum(Amount)</th>";
					echo"</tr>";
				echo"</thead>";
			while($row = mysqli_fetch_assoc($result)){
				echo"<tbody>";
					echo"<tr>";
						echo"<td>".$row['Procedures']."</td>";
						echo"<td>".$row['count(Procedures)']."</td>";
						echo"<td>".$row['sum(Amount)']."</td>";

					echo"</tr>";
				echo"<tbody>";	
		}
		echo"</table>";
		mysqli_free_result($result);
	}else{
		echo"no records matching .";

	}
}else{
	echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}

//ADOPTED_PETS	
$sql = "SELECT * FROM `ADOPTED_PETS`";
if($result = mysqli_query($conn, $sql)){
	if (mysqli_num_rows($result)>0){
		echo"<h2>ADOPTED_PETS</h2>";
		echo"<table class='table table dark table-striped'>";
			echo"<thead>";
				echo"<tr>";
					echo"<th>PetsName</th>";
					echo"<th>Fname</th>";
					echo"<th>Lname</th>";
					echo"<th>DateofAdoption</th>";
					echo"<th>PetsStatus</th>";
					
				echo"</tr>";
			echo"</thead>";
		while($row = mysqli_fetch_assoc($result)){
			echo"<tbody>";
				echo"<tr>";
					echo"<td>".$row['PetsName']."</td>";
					echo"<td>".$row['Fname']."</td>";
					echo"<td>".$row['Lname']."</td>";
					echo"<td>".$row['DateofAdoption']."</td>";
					echo"<td>".$row['PetsStatus']."</td>";

				echo"</tr>";
			echo"<tbody>";	
	}
	echo"</table>";
	mysqli_free_result($result);
}else{
	echo"no records matching .";

}
}else{
echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}	


//UNADOPTED_PETS	
$sql = "SELECT * FROM `UNADOPTED_PETS`";
	if($result = mysqli_query($conn, $sql)){
		if (mysqli_num_rows($result)>0){
			echo"<h2>UNADOPTED_PETS</h2>";
			echo"<table class='table table dark table-striped'>";
				echo"<thead>";
					echo"<tr>";
						echo"<th>Name</th>";
						echo"<th>BirthDate</th>";
						echo"<th>PetsStatus</th>";
						echo"<th>DurationofTime</th>";
					echo"</tr>";
				echo"</thead>";
			while($row = mysqli_fetch_assoc($result)){
				echo"<tbody>";
					echo"<tr>";
						echo"<td>".$row['Name']."</td>";
						echo"<td>".$row['BirthDate']."</td>";
						echo"<td>".$row['PetsStatus']."</td>";
						echo"<td>".$row['DurationofTime']."</td>";

					echo"</tr>";
				echo"<tbody>";	
		}
		echo"</table>";
		mysqli_free_result($result);
	}else{
		echo"no records matching .";

	}
}else{
	echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}


//PETS_PROFILE	
$sql = "SELECT * FROM `PETS_PROFILE`";
	if($result = mysqli_query($conn, $sql)){
		if (mysqli_num_rows($result)>0){
			echo"<h2>PETS_PROFILE</h2>";
			echo"<table class='table table dark table-striped'>";
				echo"<thead>";
					echo"<tr>";
						echo"<th>Name</th>";
						echo"<th>BirthDate</th>";
						echo"<th>Catagory</th>";
						echo"<th>PetsStatus</th>";
						echo"<th>Age</th>";
						
					echo"</tr>";
				echo"</thead>";
			while($row = mysqli_fetch_assoc($result)){
				echo"<tbody>";
					echo"<tr>";
						echo"<td>".$row['Name']."</td>";
						echo"<td>".$row['BirthDate']."</td>";
						echo"<td>".$row['Catagory']."</td>";
						echo"<td>".$row['PetsStatus']."</td>";
						echo"<td>".$row['Age']."</td>";
					echo"</tr>";
				echo"<tbody>";	
		}
		echo"</table>";
		mysqli_free_result($result);
	}else{
		echo"no records matching .";

	}
}else{
	echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}


//OWNERS_PERFORMANCE	
$sql = "SELECT * FROM `OWNERS_PERFORMANCE`";
if($result = mysqli_query($conn, $sql)){
	if (mysqli_num_rows($result)>0){
		echo"<h2>OWNERS_PERFORMANCE</h2>";
		echo"<table class='table table dark table-striped'>";
			echo"<thead>";
				echo"<tr>";
					echo"<th>Fname</th>";
					echo"<th>Lname</th>";
					echo"<th>PetsName</th>";
					echo"<th>Sizes</th>";
					echo"<th>Breed</th>";
					echo"<th>Species</th>";
					echo"<th>OwnersStatus</th>";
					echo"<th>PetsStatus</th>";
				echo"</tr>";
			echo"</thead>";
		while($row = mysqli_fetch_assoc($result)){
			echo"<tbody>";
				echo"<tr>";
					echo"<td>".$row['Fname']."</td>";
					echo"<td>".$row['Lname']."</td>";
					echo"<td>".$row['PetsName']."</td>";
					echo"<td>".$row['Sizes']."</td>";
					echo"<td>".$row['Breed']."</td>";
					echo"<td>".$row['Species']."</td>";
					echo"<td>".$row['OwnersStatus']."</td>";
					echo"<td>".$row['PetsStatus']."</td>";
				echo"</tr>";
			echo"<tbody>";	
	}
	echo"</table>";
	mysqli_free_result($result);
}else{
	echo"no records matching .";

}
}else{
echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}

//addoption rate	
$sql = "SELECT * FROM `ADOPTION_RATE`";
	if($result = mysqli_query($conn, $sql)){
		if (mysqli_num_rows($result)>0){
			echo"<h2>ADOPTION_RATE</h2>";
			echo"<table class='table table dark table-striped'>";
				echo"<thead>";
					echo"<tr>";
						echo"<th>Breed</th>";
						echo"<th>rate_of_adoption</th>";
					echo"</tr>";
				echo"</thead>";
			while($row = mysqli_fetch_assoc($result)){
				echo"<tbody>";
					echo"<tr>";
						echo"<td>".$row['Breed']."</td>";
						echo"<td>".$row['rate_of_adoption']."</td>";
					echo"</tr>";
				echo"<tbody>";	
		}
		echo"</table>";
		mysqli_free_result($result);
	}else{
		echo"no records matching .";

	}
}else{
	echo"ERROR: could not be able excute the $sql.". mysqli_error($conn);
}



		
				
?>		
</body>
</html>
<?php



