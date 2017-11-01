<?php
session_start();
function salt(){
	$salt='';
	$saltlenght=8;
	for($i=0;$i<$saltlenght;$i++){
		$salt.=chr(mt_rand(33,126));
		
	}
	
	return $salt;
}
if(isset($_POST['Log_submit'])){
	if(!empty($_POST['Log_login'])
    and !empty($_POST['Log_password'])
	){
	$login=$_POST['Log_login'];
	$password=$_POST['Log_password'];
	
	$host="www";
	$user="root";
	$pass="";
	$DB="ussers";
	
	$connection=mysqli_connect($host,$user,$pass,$DB)or die(mysqli_error($connection));
	$sql='SELECT*FROM users WHERE login="'.$login.'"';
	$dbanswer=mysqli_query($connection,$sql);
	$result=mysqli_fetch_assoc($dbanswer);
	if(!empty($result)){  
	$salt=$result['salt'];
	$saltpassword=md5($password.$salt);
	$password_user=$result['password'];
   if($password_user==$saltpassword){
	   session_start();
	   $_SESSION['auth']=true;
	   //print_r($_SESSION['auth']);
	   $user=[];
	   $user=$result;
	   $_SESSION['login']=$user['login'];
	   $_SESSION['id']=$user['id'];
       //echo "Hello ";
	   //echo $login;
	   //echo",your id is ";
	   //echo $_SESSION['id'];
	   if(!empty($_POST['remember']) and $_POST['remember']==1){
		
		$login=$user['login'];
		$cookiesalt=salt();
		 
		 setcookie('login',$login,time()+60*60*24*30);
		 setcookie('key',$cookiesalt,time()+60*60*24*30);
		 
	    $sql='UPDATE users SET cookie="'.$cookiesalt.'" WHERE login="'.$login.'"';
		$dbquery=mysqli_query($connection,$sql)or die(mysqli_error($dbquery));
		
		   
	   }
	   header('Location:/index.php');
	   
   }else{echo "Incorrect login or password";}
	}else{echo "Incorrect login or password";}
	}else{echo"somethink is empty";}
}
include_once('login.html');
?>