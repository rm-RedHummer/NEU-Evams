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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png"  sizes="76x76" href="images/New_Era_University.png">
    <title>NEU Fair 2019 Attendance Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Bootstrap CCS CDN-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--Font-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />

</head>

<style>
    ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
      color: white !important;
      opacity: 1; /* Firefox */
    }
    :-ms-input-placeholder { /* Internet Explorer 10-11 */
      color: white !important;
    }

    ::-ms-input-placeholder { /* Microsoft Edge */
      color: white !important;
    }
    .form-rounded:focus {
      background-color: #7f8c8d;
    }
    .form-rounded {
    border-radius: 1.2rem;
    background-color: #7f8c8d;
    color:white !important;
    }
    .submit-btn{
      background-image: linear-gradient(to bottom right, #e67e22, #c0392b);
      border:none;
    }
    body {
        color: white;
        background-color: #34495e;
        font-family: "Roboto", sans-serif;
    }
    .main-card{
      background-color: #2c3e50;
    }
    .main-title {
        padding-top: 10px;
    }

    .title-header {
        padding-top: 40px;

    }
    .qrImage {
        display: block;
        width: auto;
        height: 150px;
        margin-left: auto;
        margin-right: auto;
    }

    label {
        text-align: right;
    }

    input[type=submit] {
        margin-top: 13px;
        width: 100%;
    }
</style>

<body>
    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-2 px-0 offset-sm-2 pt-3 pt-sm-5">
          <img src="images/neu_fair_logo.png" alt="NEU Fair Logo" class="img-fluid w-50 mx-auto d-block">
        </div>
        <div class="col-12 col-sm-6">
          <h2 class=" font-weight-light pt-2 pt-sm-5 my-4 my-sm-4 pl-3 text-center text-sm-left">
            NEU Fair 2019 Registration
          </h2>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-10 col-12 offset-sm-1">
          <div class="card main-card rounded-0 shadow-lg mt-sm-5 mt-2 px-sm-5 px-4 py-5 mb-3">
            <div class="row main-content ">
                <div class="col-md-7 ">
                    <form method="post" enctype="multipart/form-data">
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <input type="text" name="initials" class="form-control form-rounded font-weight-light" id="initials" placeholder="Name" autocomplete="off" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <select name="college" id="json-one" class="form-control form-rounded font-weight-light" required>
                                    <option selected value="base" disabled>Select a College</option>
                                    <option value="01">Accountancy (COA)</option>
                                    <option value="02">Arts and Sciences (CAS)</option>
                                    <option value="03">Business Administration (CBA)</option>
                                    <option value="04">Communication (COC)</option>
                                    <option value="05">Computer Studies (CCS)</option>
                                    <option value="06">Criminology (CRIM)</option>
                                    <option value="07">Education (COE)</option>
                                    <option value="08">Engineering and Architecture (CEA)</option>
                                    <option value="09">Law (COL)</option>
                                    <option value="10">Medical Technology( CMT)</option>
                                    <option value="11">Medicine (MED)</option>
                                    <option value="12">Midwifery (MID)</option>
                                    <option value="13">Music (MUS)</option>
                                    <option value="14">Nursing (NUR)</option>
                                    <option value="15">Pyshical Therapy (CPT)</option>
                                    <option value="16">Respiratory Therapy (CRT)</option>
                                    <option value="17">Integrated School (IS)</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <select name="course" id="json-two" class="form-control form-rounded font-weight-light" required>
                                    <option>Choose from department</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <select name="yearLevel" id="yearLevel" class="form-control form-rounded font-weight-light" required>
                                    <option selected value="base" disabled>Select Year Level</option>
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="G11">G11</option>
                                    <option value="G12">G12</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <input type="text" name="email" class="form-control form-rounded font-weight-light" id="email" placeholder="Email" autocomplete="off" required>
                            </div>
                        </div>

                        <div class="form-group row mb-4 mb-sm-0">
                            <div class="col-sm-12">
                                <input type="submit" class="btn btn-primary form-rounded submit-btn font-weight-light" value="Generate Registration" name="register">
                            </div>
                        </div>

                    </form>
                </div>
                <div class="col-md-5">
                    <div class='card' style='width: 100%; height: 320px;'>
                    <?php
                        if(isset($_POST['register'])) {
                            $initials = htmlentities(mysqli_real_escape_string($connection, $_POST['initials']));
                            $college = htmlentities(mysqli_real_escape_string($connection, $_POST['college']));
                            $course = htmlentities(mysqli_real_escape_string($connection, $_POST['course']));
                            $yearLevel = htmlentities(mysqli_real_escape_string($connection, $_POST['yearLevel']));
                            $email = htmlentities(mysqli_real_escape_string($connection, $_POST['email']));

                            $courseCode = "";
                            $registeredCount = "";

                            switch ($course) {
                                case "Accountancy":
                                    $courseCode = "ACC";
                                    break;
                                case "Accounting Technology":
                                    $courseCode = "ACTEC";
                                    break;
                                case "Biology":
                                    $courseCode = "BIO";
                                    break;
                                case "Economics":
                                    $courseCode = "ECO";
                                    break;
                                case "Psychology":
                                    $courseCode = "PSY";
                                    break;
                                case "Public Admininstration":
                                    $courseCode = "PAD";
                                    break;
                                case "Real Estate Management":
                                    $courseCode = "REM";
                                    break;
                                case "Marketing":
                                    $courseCode = "BAMKG";
                                    break;
                                case "Legal Management":
                                    $courseCode = "BALEM";
                                    break;
                                case "HR Development and Management":
                                    $courseCode = "BAHRDM";
                                    break;
                                case "Entrepreneurship":
                                    $courseCode = "ENTRE";
                                    break;
                                case "Financial Management":
                                    $courseCode = "BAFM";
                                    break;
                                case "Communication":
                                    $courseCode = "COM";
                                    break;
                                case "Entertainment and Multimedia Computing":
                                    $courseCode = "EMC";
                                    break;
                                case "Computer Science":
                                    $courseCode = "COMSCI";
                                    break;
                                case "Information Technology":
                                    $courseCode = "INTECH";
                                    break;
                                case "Information Systems":
                                    $courseCode = "INSYS";
                                    break;
                                case "Library Information Systems":
                                    $courseCode = "LIBIS";
                                    break;
                                case "Criminology":
                                    $courseCode = "CRIM";
                                    break;
                                case "Secondary-Filipino":
                                    $courseCode = "BSFIL";
                                    break;
                                case "Secondary-Mathematics":
                                    $courseCode = "BSMAT";
                                    break;
                                case "Secondary-Biology":
                                    $courseCode = "BSBIO";
                                    break;
                                case "Secondary-Physical Sciences":
                                    $courseCode = "BSPS";
                                    break;
                                case "Secondary-TLE":
                                    $courseCode = "BSTLE";
                                    break;
                                case "Secondary-MAPE":
                                    $courseCode = "BSMAPE";
                                    break;
                                case "Secondary-English":
                                    $courseCode = "BSENG";
                                    break;
                                case "Secondary-Social Studies":
                                    $courseCode = "BSSS";
                                    break;
                                case "Elementary-General Sciences":
                                    $courseCode = "BEGS";
                                    break;
                                case "Elementary-Special Education":
                                    $courseCode = "BESE";
                                    break;
                                case "Elementary-Content Courses":
                                    $courseCode = "BSCC";
                                    break;
                                case "Elementary-PreSchool Education":
                                    $courseCode = "BEPSE";
                                    break;
                                case "Astronomy":
                                    $courseCode = "ASTRO";
                                    break;
                                case "Industrial Engineering":
                                    $courseCode = "INDUS";
                                    break;
                                case "Mechanical Engineering":
                                    $courseCode = "MECH";
                                    break;
                                case "Architecture":
                                    $courseCode = "ARCHI";
                                    break;
                                case "Electronics Engineering":
                                    $courseCode = "ELTRX";
                                    break;
                                case "Electrical Engineering":
                                    $courseCode = "ELTCL";
                                    break;
                                case "Civil Engineering":
                                    $courseCode = "CIVIL";
                                    break;
                                case "Law":
                                    $courseCode = "LAW";
                                    break;
                                case "Medical Technology":
                                    $courseCode = "MEDT";
                                    break;
                                case "Medicine":
                                    $courseCode = "MEDN";
                                    break;
                                case "Midwifery":
                                    $courseCode = "MIDW";
                                    break;
                                case "Music Prepartory and Extended Studies":
                                    $courseCode = "MPES";
                                    break;
                                case "Music-Choral Conducting":
                                    $courseCode = "MUSCC";
                                    break;
                                case "Music-Piano":
                                    $courseCode = "MUPIA";
                                    break;
                                case "Music-Voice":
                                    $courseCode = "MUVOI";
                                    break;
                                case "Music Education":
                                    $courseCode = "MUED";
                                    break;
                                case "Nursing":
                                    $courseCode = "NURS";
                                    break;
                                case "Physical Therapy":
                                    $courseCode = "PHYTH";
                                    break;
                                case "Respiratory Therapy":
                                    $courseCode = "RESTH";
                                    break;
                                case "Grade 11":
                                    $courseCode = "G11";
                                    break;
                                case "Grade 12":
                                    $courseCode = "G12";
                                    break;

                            }
                            $name = $initials;

                            $string = $initials;
                            $token = strtok($string, " ");

                            $initials = "";

                            while ($token !== false)
                               {
                                 $initials = $initials.substr($token,0,1);
                                 $token = strtok(" ");
                               }

                            $query = "SELECT * FROM attendance_registration WHERE college='$college'";
                            $executeQuery = mysqli_query($connection, $query);
                            $collegeCount = mysqli_num_rows($executeQuery);

                            $collegeCountPlus1 = $collegeCount + 1;

                            if ($collegeCountPlus1 <= 9) {
                                $registeredCount = "00" . $collegeCountPlus1;
                            } else if (($courseCount >= 10) && $collegeCountPlus1 <=99) {
                                $registeredCount = "0" . $collegeCountPlus1;
                            } else {
                                $registeredCount = $collegeCountPlus1;
                            }

                            $capitalizedInitials = strtoupper($initials);

                            $qrValue = $courseCode . $capitalizedInitials . $college . $yearLevel . $registeredCount;


                            $postImageName = $qrValue;
                            $postImageUrl = "http://localhost/neufairattendance/generateQR.php?qrValue=$qrValue";
                            $postImageExt = ".png";

                            @$rawImage = file_get_contents($postImageUrl);

                            if($rawImage) {
                                file_put_contents("qrImages/" . $postImageName . $postImageExt, $rawImage);
                                echo "<br>";
                            } else {
                                echo "Error!";
                            }

                            $insert = "INSERT INTO attendance_registration(initials, name, college, course, year_level, email, ticket_number) VALUES('$capitalizedInitials','$name', '$college', '$courseCode', '$yearLevel', '$email', '$qrValue')";

                            $query = mysqli_query($connection, $insert);

                            echo "
                                <img src='generateQR.php?qrValue=$qrValue' alt='' class='qrImage'>
                                <div class='card-body'>
                                    <hr style='height: 2px; color:#333; background-color:#333; width: 170px;'>
                                    <h4 class='card-text' style='color: #000; text-align: center;'>$qrValue</h4>
                                    <h2 class='card-text' style='color: #000; text-align: center; letter-spacing: 3px;'>NFMMXIX</h2>
                                </div>
                            ";
                            //Send the QR Image to the email provided.
                            require 'PHP Mailer/PHPMailerAutoload.php';

                            $mail = new PHPMailer();
                            $mail->isSMTP();
                            $mail->Host = "smtp.gmail.com";
                            $mail->SMTPAuth = true;
                            $mail->Username = 'neufair@gmail.com';
                            $mail->Password = 'neufairattendance';
                            $mail->SMTPSecure = 'tls';
                            $mail->Port = 587;
                            $mail->FromName = 'NEU Fair 2019';
                            $mail->isHTML(true);

                            $mail->setFrom('neufair.neu.edu.ph');
                            $mail->addAddress($email);
                            $mail->Subject = 'NEU Fair 2019 Attendance QR Code';

                            //$mail->addAttachment("qrImages/" . "$qrValue" . ".png", "$qrValue" . ".png");
                            $mail->AddEmbeddedImage("qrImages/".$qrValue.".png", "qrImages");

                            $mail->Body = "<h2>Good day $name. Your Ticket Number is: <font color='red'><b>$qrValue</b></font> </h2>
                            <p>Please download the image attached below and present it to the officer at the event.</p><img src=\"cid:qrImages\" />
                            <p>
                            Terms and Conditions:
                            </p>
                            <p>
                            1. I give consent to New Era University and its affiliates to use my
                            personal details that I have provided to the University for the purpose
                            of attendance monitoring for on-campus events.
                            </p>
                            <p>
                            2. I declare that the QR code which I am scanning for the purposes of registering
                            my attendance to this event is the QR Code that is sent to my nominated email address
                            and is associated with my name.
                            </p>
                            <p>
                            3. I undertake NOT to provide, send, or otherwise communicate to others the QR Code issued
                            to me personally through my nominated email for the purpose of
                            registering my attendance in my absence or stead, or for any other purpose.
                            </p>
                            <p>
                            4. I accept that any breach of these conditions would attract the appropriate academic penalties.
                            </p>";

                            $mail->smtpConnect(
                                array(
                                    "ssl" => array(
                                        "verify_peer" => false,
                                        "verify_peer_name" => false,
                                        "allow_self_signed" => true
                                    )
                                )
                            );

                            if(!$mail->send()) {
                                echo 'Message could not be sent.';
                                echo 'Mailer Error: ' . $mail->ErrorInfo;
                            } else {
                                echo "
                                    <div class='container' style='margin-top: 10px;'>
                                        <div class='alert alert-success alert-dismissible' id='myAlert'>
                                            <a href='main.php' class='close'>&times;</a>
                                            <p><strong>Registration Complete!</strong></p>
                                            <p>QR Code Successfully Sent to $email</p>
                                        </div>
                                    </div>
                                    <script>
                                    $(document).ready(function(){
                                        $('.close').click(function(){
                                            $('#myAlert').alert('close');
                                        });
                                    });
                                    </script>
                                ";
                            }
                        }
                    ?>

                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!--For the college & courses json.-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>

<script>
    $(function() {

        $("#json-one").change(function() {

            var $dropdown = $(this);

            $.getJSON("jsondata/courses.json", function(data) {

                var key = $dropdown.val();
                var vals = [];
                switch(key) {
                    case '01':
                        vals = data.accountancy.split(",");
                        break;
                    case '02':
                        vals = data.artsAndSciences.split(",");
                        break;
                    case '03':
                        vals = data.businessAdministration.split(",");
                        break;
                    case '04':
                        vals = data.communication.split(",");
                        break;
                    case '05':
                        vals = data.computerStudies.split(",");
                        break;
                    case '06':
                        vals = data.criminology.split(",");
                        break;
                    case '07':
                        vals = data.education.split(",");
                        break;
                    case '08':
                        vals = data.engineeringAndArchitecture.split(",");
                        break;
                    case '09':
                        vals = data.law.split(",");
                        break;
                    case '10':
                        vals = data.medicalTechnology.split(",");
                        break;
                    case '11':
                        vals = data.medicine.split(",");
                        break;
                    case '12':
                        vals = data.midwifery.split(",");
                        break;
                    case '13':
                        vals = data.music.split(",");
                        break;
                    case '14':
                        vals = data.nursing.split(",");
                        break;
                    case '15':
                        vals = data.physicalTherapy.split(",");
                        break;
                    case '16':
                        vals = data.respiratoryTherapy.split(",");
                        break;
                    case '17':
                        vals = data.integratedSchool.split(",");
                        break;
                    case 'base':
                        vals = ['Please choose from above'];
                }

                var $jsontwo = $("#json-two");
                $jsontwo.empty();
                $.each(vals, function(index, value) {
                    $jsontwo.append("<option>" + value + "</option>");
                });

            });
        });

    });
</script>
