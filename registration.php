<?php
function salt(){
	$salt='';
	$saltlenght=8;
	for($i=0;$i<$saltlenght;$i++){
		$salt.=chr(mt_rand(33,126));
		
	}
	
	return $salt;
}
if(isset($_POST['Reg_submit'])){
	if(!empty($_POST['Reg_login'])
		and !empty($_POST['Reg_password'])
	    and !empty($_POST['conf_pass'])
	){
		$login=$_POST['Reg_login'];
		$password=$_POST['Reg_password'];
	    $password_confirm=$_POST['conf_pass'];
		if($password==$password_confirm){
		$host="www";
		$user="root";
		$pass="";
		$DB="ussers";
		$connection=mysqli_connect($host,$user,$pass,$DB)or die(mysqli_error("connection error"));
		$sql='SELECT*FROM users WHERE login="'.$login.'" ';
		$valid=mysqli_query($connection,$sql)or die(mysqli_error($valid));
		$freelogin=mysqli_fetch_assoc($valid);
		if(empty($freelogin)){
	    $cookie=NULL;
		$status="1";
		$salt=salt();
		$saltpassword=md5($password.$salt);
		$one=NULL;
		//$sql='INSERT INTO users login="'.$login.'",password="'.$saltpassword.'",salt="'.$salt.'",cookie="'.$cookie.'",status="'.$status.'"';
	    $sql='INSERT INTO users(login,password,salt,cookie,status) VALUES("'.$login.'","'.$saltpassword.'","'.$salt.'","'.$cookie.'","'.$status.'")';
		$dbanswer=mysqli_query($connection,$sql)or die(mysqli_error($dbanswer));
		if($dbanswer==true){
		header('Location:/login.php');
		}
		//mysqli_query($connection,$query);
		//$sql='INSERT INTO users(login,password,salt,cookie,status) VALUES("'.$login.'","'.$saltpassword.'","'.$salt.'","'.$one.'","'.$status.'")';
		//$sql='INSERT INTO users login="'.$login.'" password="'.$saltpassword.'" salt ="'.$salt.'" status="'.$status.'" ';
		//$dbanswer=mysqli_query($connection,$sql)or die(mysqli_error($dbanswer));
		
		}else{echo"login is arleady used";}
		}else{echo"passwords aren't same!";}
	}else{echo"Something is empty!";}
}
include_once('registration.html');
?>