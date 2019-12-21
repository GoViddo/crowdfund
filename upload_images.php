<?php
//upload.php

$imagefrom = $_POST['from'];

if($_FILES["file"]["name"] != '')
{
 $test = explode('.', $_FILES["file"]["name"]);
 $ext = end($test);
 
if($imagefrom == "team")
{
    $name =  rand(10000, 99999).'_team_'.time().'.' . $ext; 
 
     $location = 'project_related_team_list/' . $name;
}
else if($imagefrom == "logo"){
    $name =  rand(10000, 99999).'_logo_'.time().'.' . $ext; 
     $location = 'project_logos/' . $name;
}
else{
    $name =  rand(10000, 99999).'_banner_'.time().'.' . $ext; 
    $location = 'project_images/' . $name;
}

 
 move_uploaded_file($_FILES["file"]["tmp_name"], $location);

echo $location;

}
?>