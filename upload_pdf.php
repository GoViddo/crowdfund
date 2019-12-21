<?php


if($_FILES["file"]["name"] != '')
{
 $test = explode('.', $_FILES["file"]["name"]);
 $ext = end($test);
 $name =  rand(10000, 99999).'_pitch_'.time().'.' . $ext; 
 $location = 'project_related_pdf/' . $name;
 move_uploaded_file($_FILES["file"]["tmp_name"], $location);

echo $location;

}
?>