<?php
include('dbconn.php');
if(isset($_GET['student'])){
    $student_id = $_GET['student'];

    $result = mysqli_query($conn,"SELECT * FROM student WHERE student_id = $student_id");

    if(!empty($result)){
        if(mysqli_num_rows($result) > 0){
            $result = mysqli_fetch_array($result);

            $student['student_id'] = $result['student_id'];
            $student['first_name'] = $result['first_name'];
            $student['last_name'] = $result['last_name'];
            $student['school_board'] = $result['school_board'];
            $student['grades'] = $result['grades'];

            if($student['school_board'] == "CSM"){

                $separate_grades = explode(",", $student['grades']);
                $num_of_grades = count($separate_grades);
                $sum_of_grades = array_sum($separate_grades);
                $average_grade = $sum_of_grades / $num_of_grades;
                $student['average'] = round($average_grade,2);

                if($average_grade >=7){
                    $student['final'] = "PASS";
                }else{
                    $student['final'] = "FAIL";
                }

                echo json_encode($student);

            }
            elseif($student['school_board'] == "CSMB"){

                $separate_grades = explode(",", $student['grades']);
                sort($separate_grades);
                if(count($separate_grades) >1){

                    array_shift($separate_grades);
                    $num_of_grades = count($separate_grades);
                    $sum_of_grades = array_sum($separate_grades);
                    $average_grade = $sum_of_grades / $num_of_grades;
                    $student['average'] = round($average_grade,2);

                    if(max($separate_grades) >= 8){
                        $student['final'] = "PASS";
                    }else{
                        $student['final'] = "FAIL";
                    }

                    echo json_encode($student);
                    
                }else{
                    $student['average'] = $separate_grades;

                    if($student['grades'] >=8){
                        $student['final'] = "PASS";
                    }else{
                        $student['final'] = "FAIL";
                    }
                    
                    echo json_encode($student);
                }
                

            }
            else{
                echo "ERROR!";
            }

        }
        else{
            echo "ERROR!";
        }
    }
    else{
        echo "ERROR!";
    }

}
else{
    echo "ERROR!";
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student grading</title>
</head>
<body>
</body>
</html>
