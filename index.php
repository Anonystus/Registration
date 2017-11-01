<?php
session_start();
$auth_session=$_SESSION['auth'];
if($auth_session==false){
	
	include_once('index.html');
	
}else{
	echo "You are loggined,and your login is ";
	echo $_SESSION['login'];
	}
	if($auth_session==false and !empty($_COOKIE['login'] and !empty($_COOKIE['key']))){
		$login=$_COOKIE['login'];
		$cookie=$_COOKIE['key'];
		$sql='SELECT*FROM users WHERE login="'.$login.'" AND cookie="'.$cookie.'"';
		$host='www';
		$user='root';
		$pass='';
		$DB='ussers';
		
		$connection=mysqli_connect($host,$user,$pass,$DB)or die(mysqli_error($connection));
		$dbanswer=mysqli_query($connection,$sql)or die(mysqli_error($dbanswer));
		$result=mysqli_fetch_assoc($dbanswer);
		if(!empty($result)){
			session_start();
			$user=[];
			$user=$result;
			$_SESSION['auth']=true;
			$_SESSION['login']=$user['login'];
			$_SESSION['id']=$user['id'];
			echo"Hello u are loginned,ur login is  ";
			echo $_SESSION['login'];
			
		}else{echo "Wrong cookies";}
		
		
		
	}

?>