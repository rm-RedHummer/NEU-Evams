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
    <title>NEU Fair 2019 Analytics</title>
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
    
    <!--Google Charts-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
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
                <h2>Analytics</h2>
                <p class="lead">View the number of attendees per event as a chart.</p>
                <hr class="my-4" style="background-color: #fff;">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label for="chooseEvent" class="col-sm-3 col-form-label lead">Choose an Event</label>
                        <div class="col-sm-9">
                            <select name="event_attended" id="chooseEvent" class="form-control" required>
                                <option selected value="base" disabled>Select Event</option>
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
                            </select >
                        </div>
                    </div><!--End of Event Dropdown-->
                    
                    <div class="form-group row">
                        <label for="chooseChart" class="col-sm-3 col-form-label lead">View as</label>
                        <div class="col-sm-9">
                            <select name="chartType" id="chooseChart" class="form-control" required>
                                <option selected value="base" disabled>Select Chart</option>
                                <option value="bar">Bar Chart</option>
                                <option value="pie">Pie Chart</option>
                                <option value="column">Column Chart</option>
                            </select>
                        </div>
                    </div><!--End of Event Dropdown-->
                    
                    <div class="row">
                        <input type="submit" class="btn btn-primary btn-lg  upload" value="Generate" name="generate"><!--Upload button-->
                    </div>
                    
                </form>
            </div><!--End of Jumbotron-->
            
            <?php
                
            
                if(isset($_POST["generate"])){
                    if(isset($_POST['event_attended']) && isset($_POST['chartType'])) {
                        $eventCode = htmlentities(mysqli_real_escape_string($connection, $_POST['event_attended']));
                        $chartType = htmlentities(mysqli_real_escape_string($connection, $_POST['chartType']));
                        
                        /*Query for College*/
                        $countCollege = "SELECT *, count(college) AS collegeCount
                                        FROM attendance_registration 
                                        INNER JOIN event_attendees ON ticket_number=attended_ticket_number
                                        WHERE event_attendees.event_code='$eventCode'
                                        GROUP BY college";  
                        $college_Query = mysqli_query($connection, $countCollege);
                        
                        /*For Course*/
                        $countCourse = "SELECT *, count(course) AS courseCount
                                        FROM attendance_registration 
                                        INNER JOIN event_attendees ON ticket_number=attended_ticket_number
                                        WHERE event_attendees.event_code='$eventCode'
                                        GROUP BY course";  
                        $course_Query = mysqli_query($connection, $countCourse);

                        /*For the title */
                        $execute_query = mysqli_query($connection, $countCourse);
                        $fetch_title = mysqli_fetch_array($execute_query);
                        $event_title = $fetch_title["event_title"];
                        
                        
                        
                        switch($chartType) {
                            case "bar":                                
                                echo "
                                    <div class='row'>
                                        <div id='barchart_college' style='width: 100%; margin-bottom: 50px;'></div>
                                    </div>
                                    <div class='row'>
                                        <div id='barchart_course' style='width: 100%; margin-bottom: 50px;'></div>
                                    </div>
                                    
                                ";
                                break;
                            case "pie":
                                
                                echo "
                                    <div class='row'>
                                        <div style='width:100%; margin-bottom: 50px;'>  
                                            <div id='coursePieChart'></div>  
                                        </div>
                                    </div>
                                    
                                    ";

                                break;
                            case "column":
                                echo "Column CHART";
                                break;
                        }
                    } else {
                        echo "<center style='color: red'>Oops! Please make sure to select an event and chart type before generating reports.</center>";
                    } /*End of else for isset of the two select*/
                } /*End of isset for the button */
            ?>
            
            <!--Google Bar Chart for College-->
            <script type="text/javascript">
                google.charts.load('current', {'packages':['bar']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                        ['College', 'Number of Attendees'],
                        <?php   
                            $collegeDesc = "";
                            while($row = mysqli_fetch_array($college_Query)) {
                                $college = $row["college"];
                                
                                switch($college) {
                                    case "01":
                                        $collegeDesc = "Accountancy";
                                        break;
                                    case "02":
                                        $collegeDesc = "Arts and Sciences";
                                        break;
                                    case "03":
                                        $collegeDesc = "Business Administration";
                                        break;
                                    case "04":
                                        $collegeDesc = "Communication";
                                        break;
                                    case "05":
                                        $collegeDesc = "Computer Studies";
                                        break;
                                    case "06":
                                        $collegeDesc = "Criminology";
                                        break;
                                    case "07":
                                        $collegeDesc = "Education";
                                        break;
                                    case "08":
                                        $collegeDesc = "Engineering and Architecture";
                                        break;
                                    case "09":
                                        $collegeDesc = "Law";
                                        break;
                                    case "10":
                                        $collegeDesc = "Medical Technology";
                                        break;
                                    case "11":
                                        $collegeDesc = "Medicine";
                                        break;
                                    case "12":
                                        $collegeDesc = "Midwifery";
                                        break;
                                    case "13":
                                        $collegeDesc = "Music";
                                        break;
                                    case "14":
                                        $collegeDesc = "Nursing";
                                        break;
                                    case "15":
                                        $collegeDesc = "Pyshical Therapy";
                                        break;
                                    case "16":
                                        $collegeDesc = "Respiratory Therapy";
                                        break;
                                }
                                
                                echo "['" . $collegeDesc . "', " . $row["collegeCount"] . "],";
                            }  
                        ?>
                ]);

                var options = {
                    backgroundColor: '#3C4858',
                    bar: {groupWidth: "80%"},
                    chart: {
                        title: 'Number of attendees in <?php  echo $event_title; ?> by department.',
                    },
                    titleTextStyle: {
                        color: '#fff',
                        fontSize: '18'
                    },
                    legend: {
                        textStyle: {
                            color: '#fff'
                        }
                    },
                    bars: 'horizontal' // Required for Material Bar Charts.
                };

                    var chart = new google.charts.Bar(document.getElementById('barchart_college'));

                    chart.draw(data, google.charts.Bar.convertOptions(options));
                }
            </script> 
                    
                    
                    
            <!--Google Bar Chart for College-->
            <script type="text/javascript">
                google.charts.load('current', {'packages':['bar']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {
                    var data = google.visualization.arrayToDataTable([
                        ['Course', 'Number of Attendees', { role: 'style' } ],
                        <?php   
                            while($fetchCourse = mysqli_fetch_array($course_Query)) {
                                echo "['" . $fetchCourse["course"] . "', " . $fetchCourse["courseCount"] 
                                    . ", " . "'" . "color: #b87333" . "'" . "],";
                            }  
                        ?>
                ]);

                var options = {
                    backgroundColor: '#3C4858',
                    bar: {groupWidth: "80%"},
                    chart: {
                        title: 'Number of attendees in <?php  echo $event_title; ?> by course.',
                    },
                    titleTextStyle: {
                        color: '#fff',
                        fontSize: '18'
                    },
                    legend: {
                        textStyle: {
                            color: '#fff'
                        }
                    },
                    bars: 'horizontal' // Required for Material Bar Charts.
                };

                    var chart = new google.charts.Bar(document.getElementById('barchart_course'));

                    chart.draw(data, google.charts.Bar.convertOptions(options));
                }
            </script>            
                     
            <!--Google Pie chart for Course-->
            <script type="text/javascript">  
            google.charts.load('current', {'packages':['corechart']});  
            google.charts.setOnLoadCallback(drawChart);  
            function drawChart() {  
                var data = google.visualization.arrayToDataTable([  
                    ['Course', 'Number'],  
                    <?php 
                        while($row = mysqli_fetch_array($result)) {
                            echo "['".$row["course"]."', ".$row["courseCount"]."],";  
                        }  

                    ?>  
                ]);  
                var options = {
                    title: 'Number of attendees in <?php  echo $event_title; ?> by course.\n',
                    backgroundColor: '#3C4858',
                    titleTextStyle: {
                        color: '#fff',
                        fontSize: '18'
                    },
                    legend: {
                        textStyle: {
                            color: '#fff'
                        }
                    }
                      //is3D:true,  
                      //pieHole: 0.4
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('coursePieChart'));  
                chart.draw(data, options);  
            }  
            </script>             
        </div><!--End of main content-->
        <div class="col-md-2"></div>
    </div>
</body>
</html>