<!DOCTYPE html>
<?php 
    session_start(); 
    include("connection.php");
    if(!isset($_SESSION['username'])) {
	   header("location: index.php");	
    }
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png"  sizes="76x76" href="images/New_Era_University.png">
    <title>NEU Fair 2019 Import Scanned Attendance</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
    <!--Bootstrap CCS CDN-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <!--For the college & courses json.-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!--Font-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
</head>

<style>
    body {
        overflow-x: hidden;
        background-color: #000;
        color: #fff;
        font-family: "Roboto", sans-serif;
    }
    
    .main-title {
        padding-top: 10px;   
    }
    .main-content {
        padding-top: 80px;
    }
    
    .title-header { 
        padding-top: 40px;
        
    }
    .upload {
        margin-left: auto;
        margin-right: auto;
        margin-top: 30px;
        margin-bottom: 0;
        width: 70%;
    }
</style>

<body>
    <!--The Body's header-->
    <div class="row main-title">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <img src="images/New_Era_University.png" width="125px" height="125" style="float: left;">
            <h2 class="title-header">NEU FAIR 2019 REGISTRATION</h2>
        </div> <!--End of logo and title-->
        <div class="col-md-2">
            <div class="btn-group dropleft mt-5">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Menu</button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="main.php">Registration Attendance</a>
                    <a class="dropdown-item" href="importAttendance.php">Import Attendance</a>
                    <a class="dropdown-item" href="analytics.php">Analytics</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="logout.php">Logout</a>
                </div>
            </div>
        </div><!--End of Menu Button-->
    </div><!--End of Header-->
    
    <!--The Main Body-->
    <div class="row main-content">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="jumbotron" style="background-color: #636e72;">
                <h2>Import Attendace</h2>
                <p class="lead">After the QR has been scanned, upload the <strong>CSV File</strong> and <strong>choose the event</strong> that the student have attended.</p>
                <hr class="my-4" style="background-color: #fff;">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label for="eventCode" class="col-sm-3 col-form-label lead">Select Event Attended</label>
                        <div class="col-sm-9">
                            <select name="event_attended" id="eventCode" class="form-control">
                                <option selected value="base" disabled>Select Event Attended</option>
                                <option value="01">MR. AND MS. NEU</option>
                                <option value="02">MUSIC PLAYLIST</option>
                                <option value="03">FUN WALK</option>
                                <option value="04">FLOAT PARADE</option>
                                <option value="05">NEU AND THE BEE</option>
                                <option value="06">RISING VOICES: SPOKEN WORD POETRY CONTEST</option>
                                <option value="07">FORUM</option>
                                <option value="08">BRAIN WARS</option>
                                <option value="09">NEU FAIR 2018 GRAND KICK-OFF ACTIVITY</option>
                                <option value="10">DEBATE</option>
                                <option value="11">HATAW SAYAW</option>
                                <option value="12">NEU A CAPPELLA</option>
                                <option value="13">CLASH OF THE BRUSH AND SCRAP TO CRAFT</option>
                            </select>
                        </div>
                    </div><!--End of Event Dropdown-->
                    
                    <div class="form-group row">
                        <div class="col-sm-3"><label class="col-form-label lead" for="chooseCSV">Upload a file</label></div>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input type="file" class="form-control-file" name="csvFile" id="chooseCSV" />
                            </div>
                        </div>
                    </div><!--End of Upload File-->
                    
                    <div class="row">
                        <input type="submit" class="btn btn-primary btn-lg  upload" value="Upload" name="upload"><!--Upload button-->
                    </div>
                </form><!--End of form-->
                <?php 
                    if(isset($_POST['upload'])) {
                        $fileName = $_FILES['csvFile']['name'];
                        $fileTempName = $_FILES['csvFile']['tmp_name'];

                        $fileExtension = pathinfo($fileName, PATHINFO_EXTENSION);

                        $allowedType = array('csv');
                        if(!in_array($fileExtension, $allowedType)) {
                            echo "
                            <div class='alert alert-danger'>Invalid File Extension</div>
                            ";
                        } else {
                            $handle = fopen($fileTempName, 'r');
                            $event_attended = htmlentities(mysqli_real_escape_string($connection, $_POST['event_attended']));
                            
                            $event_title = "";
                            switch($event_attended) {
                                case "01":
                                    $event_title = "MR. AND MS. NEU";
                                    break;
                                case "02":
                                    $event_title = "MUSIC PLAYLIST";
                                    break;
                                case "03":
                                    $event_title = "FUN WALK";
                                    break;
                                case "04":
                                    $event_title = "FLOAT PARADE";
                                    break;
                                case "05":
                                    $event_title = "NEU AND THE BEE";
                                    break;
                                case "06":
                                    $event_title = "RISING VOICES: SPOKEN WORD POETRY CONTEST";
                                    break;
                                case "07":
                                    $event_title = "FORUM";
                                    break;
                                case "08":
                                    $event_title = "BRAIN WAR";
                                    break;
                                case "09":
                                    $event_title = "NEU FAIR 2018 GRAND KICK-OFF ACTIVITY";
                                    break;
                                case "10":
                                    $event_title = "DEBATE";
                                    break;
                                case "11":
                                    $event_title = "HATAW SAYAW";
                                    break;
                                case "12":
                                    $event_title = "NEU A CAPPELLA";
                                    break;
                                case "13":
                                    $event_title = "CLASH OF THE BRUSH AND SCRAP TO CRAFT";
                                    break;
                            }
                            
                            while(($data = fgetcsv($handle, 1000, ',')) !== false) {
                                $date_scanned = $data[0];
                                $ticket_number = $data[2];
                                
                                $insertQuery = "INSERT INTO event_attendees(date_scanned, attended_ticket_number, event_code, event_title) VALUES('$date_scanned', '$ticket_number', '$event_attended', '$event_title')";

                                $run = mysqli_query($connection, $insertQuery);
                            }
                            if(!$run) {
                                die("<div class='alert alert-danger'>Oops! There was an error in uploading the file.</div>");
                            } else {
                                echo "<br><br>
                                <div class='alert alert-success'>File has been uploaded successfully.</div>
                                ";
                            }
                        }
                    }
                ?>
            </div><!--End of Jumbotron-->
        </div>
        <div class="col-md-2"></div>
    </div>
</body>
</html>