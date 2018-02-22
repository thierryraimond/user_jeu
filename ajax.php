<?php
require_once('inc/class.pdouserjeu.inc.php');

$pdo = PdoNewsletter::getPdoNewsletter();

$controller = $_POST['controller'];

if ($controller == 'printUser'){
	echo json_encode($pdo->getUsers());
}
if ($controller == 'afficheUser'){
	$id = $_POST['id'];
	echo json_encode($pdo->getUser($id));
}


?>