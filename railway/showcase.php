<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking</title>
    <?php
    require_once('DBconnect.php');
    session_start();
    ?>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ecebeb;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: top;
            align-items: center;
            min-height: 100vh;
        }
        .welcome-message {
            background-color: #1b5b00;
            color: #ff0000;
            padding: 10px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            text-align: center;
            width: 100%;
        }
        .profile-box {
            background-color: #e5e3e3;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 0px rgba(0, 0, 0, 0.2);
            width: 500px;
            text-align: center;
            margin-top: 20px;
        }
        .profile-box h2 {
            margin-bottom: 20px;
            color: #1b5b00;
        }
        .profile-box label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
        }
        .profile-box select,
        .profilee-box input[type="date"],
        .profile-box input[type="text"],
        .profile-box input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .profile-box input[type="submit"] {
            background-color: #147700;
            color: #ffffff;
            border: none;
            padding: 10px 30px;
            cursor: pointer;
            border-radius: 10px;
        }
        .page-links-box {
            background-color: #ede9e9;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            width: 50%;
            text-align: center;
            margin-top: 5px;
            display: flex;
            justify-content: space-between;
        }
        .page-links-box a {
            color: #1b5b00;
            text-decoration: none;
            margin: 0;
        }
        .page-links-box3 {
            background-color: #f9f9f9;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            width: 25%;
            text-align: center;
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }
        .page-links-box3 a {
            color: #1b5b00;
            text-decoration: none;
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="welcome-message">
        
        <h2>Welcome to Railway E-ticketing System</h2>
        <img src="pics/bangladesh-railway.png" alt="Logo" width="50">
        <p><span style="color: rgb(0, 0, 0); font-weight: bold">Developed by Group 8</span></p>
    </div>
    <?php
    $l1 = 'home.php';
    $l2 = 'login.php';
    $l3 = 'registration.php';
    $l4 = 'train_schedule.php';
    $l5 = 'myacc.php';
    $ses = false;
    if (isset($_SESSION['phone'])) {
        $ses = true;
      }
    if ($ses == false) {
        echo '<div class="page-links-box">';
        echo "<a href='$l1'>Home</a>";
        echo "<a href='$l2'>Login</a>";
        echo "<a href='$l3'>Registration</a>";
        echo "<a href='$l4'>Train Information</a>";
        echo '</div>';
    }elseif($ses == true){
        echo '<div class="page-links-box3">';
        echo "<a href='$l1'>Home</a>";
        echo "<a href='$l4'>Train Information</a>";
        echo "<a href='$l5'>My Account</a>";
        echo '</div>';
    }
    ?>
    
    <div class="profile-box">
        <h2>Active Train Schedules</h2>
        <form action="#" method="post">
            <h3>Journery from Station 1 to Station 2</h3>
            <B>Following Trains are available according to your specifications</B>
            <br>
            <br>
            <p>Train Name: [Retrieve from backend]</p>
            <p>Date of Journey: [Retrieve from backend]</p>
            <p>Departure Time: [Retrieve from backend]</p>
            <p>Selected Class: [Retrieve from backend]</p>
            <p>Available Seats: [Retrieve from backend]</p>
            <p>Fare per seat: [Retrieve from backend]</p>
            <input type="Number" name="Number of Ticket" placeholder="Number of Ticket"style="padding: 7px; width: 100px; border-radius: 10px;font-size: 12px;" required>
            <br>
            <br>
            <input type="submit" value="Book">
        </form>

    </div>
   
   
   
    
    
    
    

<body>
</html>


    
   