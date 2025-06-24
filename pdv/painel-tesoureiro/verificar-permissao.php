<?php 

//VERIFICAR PERMISSÃO DO USUÁRIO
if(@$_SESSION['nivel_usuario'] != 'Tesoureiro'){
	echo "<script language='javascript'>window.location='../index.php'</script>";
}

 ?>